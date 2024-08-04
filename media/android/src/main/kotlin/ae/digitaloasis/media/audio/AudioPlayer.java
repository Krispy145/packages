package ae.digitaloasis.media.audio;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;

import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;

import java.lang.ref.WeakReference;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.JSONMethodCodec;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

import ae.digitaloasis.media.MediaNotificationManagerService;

public class AudioPlayer implements FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler, EventChannel.StreamHandler {

    private static final String TAG = "AudioPlayer";

    private AudioServiceBinder audioServiceBinder = null;

    private final Handler audioProgressUpdateHandler = new IncomingMessageHandler(this);

    private EventChannel.EventSink eventSink;

    private Activity activity;

    private Context context;

    private String audioURL;

    private String title;

    private String subtitle;

    private int startPositionInMills;

    private int mediaDuration = 0;

    private boolean mIsBoundMediaNotificationManagerService;

    private MediaNotificationManagerService mMediaNotificationManagerService;

    private final ServiceConnection mMediaNotificationManagerServiceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName componentName, IBinder service) {
            mMediaNotificationManagerService =
                    ((MediaNotificationManagerService.MediaNotificationManagerServiceBinder) service).getService();
            mMediaNotificationManagerService.setActivePlayer(audioServiceBinder);
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
            mMediaNotificationManagerService = null;
        }
    };

    private final ServiceConnection serviceConnection = new ServiceConnection() {

        @Override
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            audioServiceBinder = (AudioServiceBinder) iBinder;
            audioServiceBinder.setActivity(activity);
            audioServiceBinder.setContext(context);
            audioServiceBinder.setAudioFileUrl(audioURL);
            audioServiceBinder.setTitle(title);
            audioServiceBinder.setSubtitle(subtitle);
            audioServiceBinder.setAudioProgressUpdateHandler(audioProgressUpdateHandler);
            audioServiceBinder.startAudio(startPositionInMills);
            doBindMediaNotificationManagerService();
        }

        @Override
        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    @Override
    public void onAttachedToEngine(@NotNull FlutterPluginBinding binding) {
        context = binding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(binding.getBinaryMessenger(), "ae.digitaloasis/NativeAudioChannel");
        methodChannel.setMethodCallHandler(this);

        EventChannel eventChannel = new EventChannel(binding.getBinaryMessenger(), "ae.digitaloasis/NativeAudioEventChannel", JSONMethodCodec.INSTANCE);
        eventChannel.setStreamHandler(this);
    }

    @Override
    public void onDetachedFromEngine(@NotNull FlutterPluginBinding binding) {
        // Clean up any resources here
    }

    @Override
    public void onAttachedToActivity(@NotNull ActivityPluginBinding binding) {
        activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        activity = null;
    }

    @Override
    public void onReattachedToActivityForConfigChanges(@NotNull ActivityPluginBinding binding) {
        activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivity() {
        activity = null;
    }

    @Override
    public void onMethodCall(@NotNull MethodCall call, @NotNull MethodChannel.Result result) {
        switch (call.method) {
            case "play":
                play(call.arguments);
                result.success(true);
                break;
            case "pause":
                pause();
                result.success(true);
                break;
            case "reset":
                reset();
                result.success(true);
                break;
            case "seekTo":
                seekTo(call.arguments);
                result.success(true);
                break;
            case "dispose":
                onDestroy();
                result.success(true);
                break;
            default:
                result.notImplemented();
        }
    }

    @Override
    public void onListen(Object o, EventChannel.EventSink eventSink) {
        this.eventSink = eventSink;
    }

    @Override
    public void onCancel(Object o) {
        this.eventSink = null;
    }

    private void play(Object arguments) {
        // Implementation of play method
    }

    private void pause() {
        // Implementation of pause method
    }

    private void reset() {
        // Implementation of reset method
    }

    private void seekTo(Object arguments) {
        // Implementation of seekTo method
    }

    private void onDestroy() {
        try {
            unBoundAudioService();
            doUnbindMediaNotificationManagerService();
            mediaDuration = 0;
        } catch (Exception e) { /* ignore */ }
    }

    private void doBindMediaNotificationManagerService() {
        Intent service = new Intent(this.context, MediaNotificationManagerService.class);
        this.context.bindService(service, mMediaNotificationManagerServiceConnection, Context.BIND_AUTO_CREATE);
        mIsBoundMediaNotificationManagerService = true;
        this.context.startService(service);
    }

    private void doUnbindMediaNotificationManagerService() {
        if (mIsBoundMediaNotificationManagerService) {
            this.context.unbindService(mMediaNotificationManagerServiceConnection);
            mIsBoundMediaNotificationManagerService = false;
        }
    }

    private void unBoundAudioService() {
        if (audioServiceBinder != null) {
            this.context.unbindService(serviceConnection);
            reset();
        }
    }

    private static class IncomingMessageHandler extends Handler {
        private final WeakReference<AudioPlayer> mService;

        IncomingMessageHandler(AudioPlayer service) {
            mService = new WeakReference<>(service);
        }

        @Override
        public void handleMessage(Message msg) {
            // Handling messages
        }
    }
}
