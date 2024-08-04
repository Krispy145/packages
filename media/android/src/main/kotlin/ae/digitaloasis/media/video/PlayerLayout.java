package ae.digitaloasis.media.video;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DefaultDataSourceFactory;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MergingMediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.ui.PlayerView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;

import ae.digitaloasis.media.FlutterAVPlayer;
import ae.digitaloasis.media.MediaNotificationManagerService;
import ae.digitaloasis.media.PlayerNotificationUtil;
import ae.digitaloasis.media.PlayerState;
import ae.digitaloasis.media.R;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.JSONMethodCodec;

public class PlayerLayout implements FlutterAVPlayer, EventChannel.StreamHandler {
    public static final String TAG = "PlayerLayout";
    public static final String mNotificationChannelId = "NotificationBarController";
    private static final float PLAYBACK_RATE = 1.0f;
    private static final int NOTIFICATION_ID = 0;

    public static ExoPlayer activePlayer;

    private final Context context;
    private final Activity activity;
    private final BinaryMessenger messenger;
    private final int viewId;

    private PlayerView playerView;
    private ExoPlayer exoPlayer;
    private DefaultTrackSelector trackSelector;
    private JSONArray subtitles = null;

    private String url = "";
    private String title = "";
    private String subtitle = "";
    private String preferredAudioLanguage = "mul";
    private String preferredTextLanguage = "";
    private long position = -1;
    private boolean autoPlay = false;
    private boolean loop = false;
    private boolean showControls = false;
    private long mediaDuration = 0L;

    private MediaSessionCompat mMediaSessionCompat;
    private EventChannel.EventSink eventSink;

    private boolean mIsBoundMediaNotificationManagerService;
    private MediaNotificationManagerService mMediaNotificationManagerService;

    private final ServiceConnection mMediaNotificationManagerServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder service) {
            mMediaNotificationManagerService = ((MediaNotificationManagerService.MediaNotificationManagerServiceBinder) service).getService();
            mMediaNotificationManagerService.setActivePlayer(PlayerLayout.this);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            mMediaNotificationManagerService = null;
        }
    };

    public PlayerLayout(@NonNull Context context, Activity activity, BinaryMessenger messenger, int id, Object arguments) {
        this.context = context;
        this.activity = activity;
        this.messenger = messenger;
        this.viewId = id;

        try {
            JSONObject args = (JSONObject) arguments;

            this.url = args.getString("url");
            this.title = args.getString("title");
            this.subtitle = args.getString("subtitle");
            this.preferredAudioLanguage = args.getString("preferredAudioLanguage");
            this.preferredTextLanguage = args.getString("preferredTextLanguage");
            this.position = Double.valueOf(args.getDouble("position")).intValue();
            this.autoPlay = args.getBoolean("autoPlay");
            this.loop = args.getBoolean("loop");
            this.showControls = args.getBoolean("showControls");

            try {
                this.subtitles = args.getJSONArray("subtitles");
            } catch (Exception e) {
                // Ignore, as subtitles may not be present
            }

            initPlayer();

        } catch (Exception e) {
            Log.e(TAG, "Error initializing PlayerLayout: " + e.getMessage(), e);
            throw new RuntimeException(e);
        }

        // release previous instance
        if (activePlayer != null) {
            activePlayer.release();
        }

        activePlayer = exoPlayer;
    }

    @Override
    public void onListen(Object o, EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
    }

    @Override
    public void onCancel(Object o) {
        this.eventSink = null;
    }

    private void initPlayer() {
        try {
            trackSelector = new DefaultTrackSelector(context);
            trackSelector.setParameters(
                    trackSelector.buildUponParameters()
                            .setPreferredAudioLanguage(this.preferredAudioLanguage)
                            .setPreferredTextLanguage(this.preferredTextLanguage)
            );

            exoPlayer = new ExoPlayer.Builder(context).setTrackSelector(trackSelector).build();
            exoPlayer.setPlayWhenReady(this.autoPlay);

            if (this.loop) {
                exoPlayer.setRepeatMode(Player.REPEAT_MODE_ONE);
            }

            exoPlayer.addAnalyticsListener(new PlayerAnalyticsEventsListener());

            if (this.position >= 0) {
                exoPlayer.seekTo(this.position * 1000);
            }

            playerView = new PlayerView(context);
            playerView.setPlayer(exoPlayer);
            playerView.setUseController(showControls);

            new EventChannel(
                    messenger,
                    "ae.digitaloasis/NativeVideoPlayerEventChannel_" + this.viewId,
                    JSONMethodCodec.INSTANCE
            ).setStreamHandler(this);

            updateMediaSource();
            setupMediaSession();
            doBindMediaNotificationManagerService();
        } catch (Exception e) {
            Log.e(TAG, "Error initializing ExoPlayer: ", e);
        }
    }

    public View getView() {
        // Return the PlayerView instance
        return playerView;
    }

    private void setupMediaSession() {
        try {
            ComponentName receiver = new ComponentName(context.getPackageName(), RemoteReceiver.class.getName());

            mMediaSessionCompat = new MediaSessionCompat(context, PlayerLayout.class.getSimpleName(), receiver, null);
            mMediaSessionCompat.setFlags(MediaSessionCompat.FLAG_HANDLES_TRANSPORT_CONTROLS | MediaSessionCompat.FLAG_HANDLES_MEDIA_BUTTONS);
            mMediaSessionCompat.setCallback(new MediaSessionCallback());
            mMediaSessionCompat.setActive(true);

            setAudioMetadata();
            updatePlaybackState(PlayerState.PLAYING);
        } catch (Exception e) {
            Log.e(TAG, "Error setting up MediaSession: ", e);
        }
    }

    private void setAudioMetadata() {
        try {
            MediaMetadataCompat metadata = new MediaMetadataCompat.Builder()
                    .putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, title)
                    .putString(MediaMetadataCompat.METADATA_KEY_TITLE, title)
                    .putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, subtitle)
                    .build();
            mMediaSessionCompat.setMetadata(metadata);
        } catch (Exception e) {
            Log.e(TAG, "Error setting audio metadata: ", e);
        }
    }

    private PlaybackStateCompat.Builder getPlaybackStateBuilder() {
        PlaybackStateCompat playbackState = mMediaSessionCompat.getController().getPlaybackState();
        return playbackState == null
                ? new PlaybackStateCompat.Builder()
                : new PlaybackStateCompat.Builder(playbackState);
    }

    private void updatePlaybackState(PlayerState playerState) {
        try {
            if (mMediaSessionCompat == null) return;

            PlaybackStateCompat.Builder newPlaybackState = getPlaybackStateBuilder();
            long capabilities = getCapabilities(playerState);

            newPlaybackState.setActions(capabilities);

            int playbackStateCompat = PlaybackStateCompat.STATE_NONE;
            switch (playerState) {
                case PLAYING:
                    playbackStateCompat = PlaybackStateCompat.STATE_PLAYING;
                    break;
                case PAUSED:
                    playbackStateCompat = PlaybackStateCompat.STATE_PAUSED;
                    break;
                case BUFFERING:
                    playbackStateCompat = PlaybackStateCompat.STATE_BUFFERING;
                    break;
                case IDLE:
                    playbackStateCompat = PlaybackStateCompat.STATE_STOPPED;
                    break;
            }
            newPlaybackState.setState(playbackStateCompat, exoPlayer.getCurrentPosition(), PLAYBACK_RATE);
            mMediaSessionCompat.setPlaybackState(newPlaybackState.build());

            updateNotification(capabilities);
        } catch (Exception e) {
            Log.e(TAG, "Error updating playback state: ", e);
        }
    }

    private @PlaybackStateCompat.Actions long getCapabilities(PlayerState playerState) {
        long capabilities = 0;
        switch (playerState) {
            case PLAYING:
            case BUFFERING:
                capabilities |= PlaybackStateCompat.ACTION_PAUSE | PlaybackStateCompat.ACTION_STOP;
                break;
            case PAUSED:
                capabilities |= PlaybackStateCompat.ACTION_PLAY | PlaybackStateCompat.ACTION_STOP;
                break;
            case IDLE:
                capabilities |= PlaybackStateCompat.ACTION_PLAY;
                break;
        }
        return capabilities;
    }

    private void updateNotification(long capabilities) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                createNotificationChannel();
            }

            NotificationCompat.Builder notificationBuilder = PlayerNotificationUtil.from(
                    activity, context, mMediaSessionCompat, mNotificationChannelId
            );

            if ((capabilities & PlaybackStateCompat.ACTION_PAUSE) != 0) {
                notificationBuilder.addAction(R.drawable.ic_pause, "Pause",
                        PlayerNotificationUtil.getActionIntent(context, KeyEvent.KEYCODE_MEDIA_PAUSE));
            }

            if ((capabilities & PlaybackStateCompat.ACTION_PLAY) != 0) {
                notificationBuilder.addAction(R.drawable.ic_play, "Play",
                        PlayerNotificationUtil.getActionIntent(context, KeyEvent.KEYCODE_MEDIA_PLAY));
            }

            NotificationManager notificationManager = (NotificationManager)
                    context.getSystemService(Context.NOTIFICATION_SERVICE);

            if (notificationManager != null) {
                notificationManager.notify(NOTIFICATION_ID, notificationBuilder.build());
            }
        } catch (Exception e) {
            Log.e(TAG, "Error updating notification: ", e);
        }
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private void createNotificationChannel() {
        try {
            NotificationManager notificationManager = (NotificationManager)
                    context.getSystemService(Context.NOTIFICATION_SERVICE);

            CharSequence channelNameDisplayedToUser = "Notification Bar Controls";
            int importance = NotificationManager.IMPORTANCE_LOW;

            NotificationChannel newChannel = new NotificationChannel(
                    mNotificationChannelId, channelNameDisplayedToUser, importance
            );

            newChannel.setDescription("All notifications");
            newChannel.setShowBadge(false);
            newChannel.setLockscreenVisibility(Notification.VISIBILITY_PUBLIC);

            if (notificationManager != null) {
                notificationManager.createNotificationChannel(newChannel);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error creating notification channel: ", e);
        }
    }

    private void cleanPlayerNotification() {
        try {
            NotificationManager notificationManager = (NotificationManager)
                    context.getSystemService(Context.NOTIFICATION_SERVICE);

            if (notificationManager != null) {
                notificationManager.cancel(NOTIFICATION_ID);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error cleaning player notification: ", e);
        }
    }

    private void doBindMediaNotificationManagerService() {
        try {
            Intent service = new Intent(this.context, MediaNotificationManagerService.class);
            this.context.bindService(service, mMediaNotificationManagerServiceConnection, Context.BIND_AUTO_CREATE);
            mIsBoundMediaNotificationManagerService = true;
            this.context.startService(service);
        } catch (Exception e) {
            Log.e(TAG, "Error binding MediaNotificationManagerService: ", e);
        }
    }

    private void doUnbindMediaNotificationManagerService() {
        try {
            if (mIsBoundMediaNotificationManagerService) {
                this.context.unbindService(mMediaNotificationManagerServiceConnection);
                mIsBoundMediaNotificationManagerService = false;
            }
        } catch (Exception e) {
            Log.e(TAG, "Error unbinding MediaNotificationManagerService: ", e);
        }
    }

    public void pause() {
        if (exoPlayer != null && exoPlayer.isPlaying()) {
            exoPlayer.setPlayWhenReady(false);
        }
    }

    public void play() {
        if (exoPlayer != null && !exoPlayer.isPlaying()) {
            exoPlayer.setPlayWhenReady(true);
        }
    }

    private void listenForPlayerTimeChange() {
        final Handler handler = new Handler();
        final Runnable runnable = new Runnable() {
            @Override
            public void run() {
                try {
                    if (exoPlayer.isPlaying()) {
                        JSONObject message = new JSONObject();
                        message.put("name", "onTime");
                        message.put("time", exoPlayer.getCurrentPosition() / 1000);

                        Log.d(TAG, "onTime: [time=" + exoPlayer.getCurrentPosition() / 1000 + "]");
                        eventSink.success(message);
                    }

                } catch (Exception e) {
                    Log.e(TAG, "onTime: ", e);
                }

                onDuration();

                if (exoPlayer.getPlayWhenReady()) {
                    handler.postDelayed(this, 1000);
                }
            }
        };
        handler.post(runnable);
    }

    private void updateMediaSource() {
        try {
            DataSource.Factory dataSourceFactory = new DefaultDataSourceFactory(context,
                    Util.getUserAgent(context, "media"));

            MediaSource videoSource;
            if (this.url.contains(".m3u8") || this.url.contains(".m3u")) {
                videoSource = new HlsMediaSource.Factory(dataSourceFactory).createMediaSource(MediaItem.fromUri(Uri.parse(this.url)));
            } else {
                videoSource = new ProgressiveMediaSource.Factory(dataSourceFactory).createMediaSource(MediaItem.fromUri(Uri.parse(this.url)));
            }

            exoPlayer.setMediaSource(withSubtitles(dataSourceFactory, videoSource));
            exoPlayer.prepare();
        } catch (Exception e) {
            Log.e(TAG, "Error updating media source: ", e);
        }
    }

    private MediaSource withSubtitles(DataSource.Factory dataSourceFactory, MediaSource source) {
        if (this.subtitles != null && this.subtitles.length() > 0) {
            for (int i = 0; i < this.subtitles.length(); i++) {
                try {
                    JSONObject subtitle = this.subtitles.getJSONObject(i);
                    MediaItem.SubtitleConfiguration subtitleConfiguration =
                            new MediaItem.SubtitleConfiguration.Builder(Uri.parse(subtitle.getString("uri")))
                                    .setMimeType(subtitle.getString("mimeType"))
                                    .setLanguage(subtitle.getString("languageCode"))
                                    .setSelectionFlags(C.SELECTION_FLAG_DEFAULT)
                                    .build();

                    MediaSource subtitleMediaSource =
                            new SingleSampleMediaSource.Factory(dataSourceFactory)
                                    .createMediaSource(subtitleConfiguration, C.TIME_UNSET);

                    source = new MergingMediaSource(source, subtitleMediaSource);
                } catch (JSONException e) {
                    Log.e(TAG, "Error adding subtitles: ", e);
                }
            }
        }
        return source;
    }

    public void onMediaChanged(Object arguments) {
        try {
            HashMap<String, String> args = (HashMap<String, String>) arguments;
            this.url = args.get("url");
            this.title = args.get("title");
            this.subtitle = args.get("description");

            updateMediaSource();
        } catch (Exception e) {
            Log.e(TAG, "Error changing media: ", e);
        }
    }

    public void onShowControlsFlagChanged(Object arguments) {
        try {
            if (arguments instanceof HashMap) {
                HashMap<String, Object> args = (HashMap<String, Object>) arguments;
                boolean sc = Boolean.parseBoolean(args.get("showControls").toString());
                playerView.setUseController(sc);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error changing show controls flag: ", e);
        }
    }

    public void setPreferredAudioLanguage(Object arguments) {
        try {
            HashMap<String, String> args = (HashMap<String, String>) arguments;
            String languageCode = args.get("code");
            this.preferredAudioLanguage = languageCode;

            if (exoPlayer != null && trackSelector != null && exoPlayer.isPlaying()) {
                trackSelector.setParameters(
                        trackSelector.buildUponParameters().setPreferredAudioLanguage(languageCode)
                );
            }
        } catch (Exception e) {
            Log.e(TAG, "Error setting preferred audio language: ", e);
        }
    }

    public void setPreferredTextLanguage(Object arguments) {
        try {
            HashMap<String, String> args = (HashMap<String, String>) arguments;
            String languageCode = args.get("code");
            this.preferredTextLanguage = languageCode;

            if (exoPlayer != null && trackSelector != null && exoPlayer.isPlaying()) {
                trackSelector.setParameters(
                        trackSelector.buildUponParameters().setPreferredTextLanguage(languageCode)
                );
            }
        } catch (Exception e) {
            Log.e(TAG, "Error setting preferred text language: ", e);
        }
    }

    public void seekTo(Object arguments) {
        try {
            HashMap<String, Double> args = (HashMap<String, Double>) arguments;
            Double pos = args.get("position");

            if (pos >= 0) {
                this.position = pos.intValue();

                if (exoPlayer != null) {
                    exoPlayer.seekTo(this.position * 1000);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Error seeking to position: ", e);
        }
    }

    void onDuration() {
        try {
            long newDuration = exoPlayer.getDuration();

            if (newDuration != mediaDuration && eventSink != null) {
                mediaDuration = newDuration;

                JSONObject message = new JSONObject();
                message.put("name", "onDuration");
                message.put("duration", mediaDuration);

                Log.d(TAG, "onDuration: [duration=" + mediaDuration + "]");
                eventSink.success(message);
            }
        } catch (Exception e) {
            Log.e(TAG, "Error onDuration: " + e.getMessage(), e);
        }
    }

    public void onDestroy() {
        try {
            if (exoPlayer != null) {
                exoPlayer.stop();
                exoPlayer.release();
            }
            doUnbindMediaNotificationManagerService();
            cleanPlayerNotification();
            activePlayer = null;
        } catch (Exception e) {
            Log.e(TAG, "Error in onDestroy: ", e);
        }
    }

    private final class MediaSessionCallback extends MediaSessionCompat.Callback {
        @Override
        public void onPause() {
            pause();
        }

        @Override
        public void onPlay() {
            play();
        }

        @Override
        public void onSeekTo(long pos) {
            exoPlayer.seekTo(pos);
        }

        @Override
        public void onStop() {
            pause();
        }
    }

    class PlayerAnalyticsEventsListener implements AnalyticsListener {
        long beforeSeek = 0;

        public void onSeekProcessed(EventTime eventTime) {
            try {
                JSONObject message = new JSONObject();
                message.put("name", "onSeek");
                message.put("position", beforeSeek);
                message.put("offset", eventTime.currentPlaybackPositionMs / 1000);

                Log.d(TAG, "onSeek: [position=" + beforeSeek + "] [offset=" +
                        eventTime.currentPlaybackPositionMs / 1000 + "]");
                eventSink.success(message);

            } catch (Exception e) {
                Log.e(TAG, "onSeek: ", e);
            }
        }

        public void onSeekStarted(EventTime eventTime) {
            beforeSeek = eventTime.currentPlaybackPositionMs / 1000;
        }

        public void onPlayerError(EventTime eventTime, ExoPlaybackException error) {
            try {
                String errorMessage = "ExoPlaybackException Type [" + error.type + "] " +
                        error.getSourceException().getCause().getMessage();

                JSONObject message = new JSONObject();
                message.put("name", "onError");
                message.put("error", errorMessage);

                Log.d(TAG, "onError: [errorMessage=" + errorMessage + "]");
                eventSink.success(message);

            } catch (Exception e) {
                Log.e(TAG, "onError: ", e);
            }
        }

        @Override
        public void onPlayerStateChanged(EventTime eventTime, boolean playWhenReady, int playbackState) {
            if (playbackState == Player.STATE_READY) {
                if (playWhenReady) {
                    try {
                        updatePlaybackState(PlayerState.PLAYING);

                        JSONObject message = new JSONObject();
                        message.put("name", "onPlay");

                        Log.d(TAG, "onPlay: []");
                        eventSink.success(message);

                    } catch (Exception e) {
                        Log.e(TAG, "onPlay: ", e);
                    }

                } else {
                    try {
                        updatePlaybackState(PlayerState.PAUSED);

                        JSONObject message = new JSONObject();
                        message.put("name", "onPause");

                        Log.d(TAG, "onPause: []");
                        eventSink.success(message);

                    } catch (Exception e) {
                        Log.e(TAG, "onPause: ", e);
                    }

                }

                onDuration();

            } else if (playbackState == Player.STATE_ENDED) {
                try {
                    updatePlaybackState(PlayerState.COMPLETE);

                    JSONObject message = new JSONObject();
                    message.put("name", "onComplete");

                    Log.d(TAG, "onComplete: []");
                    eventSink.success(message);

                } catch (Exception e) {
                    Log.e(TAG, "onComplete: ", e);
                }
            }
        }
    }
}
