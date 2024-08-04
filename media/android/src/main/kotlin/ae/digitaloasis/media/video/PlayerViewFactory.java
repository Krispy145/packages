package ae.digitaloasis.media.video;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
import io.flutter.plugin.common.JSONMessageCodec;
import android.util.Log;

public class PlayerViewFactory extends PlatformViewFactory implements FlutterPlugin, ActivityAware {

    private static final String TAG = "PlayerViewFactory";
    private Activity activity;
    private BinaryMessenger messenger;
    private PlayerView playerView;

    public PlayerViewFactory() {
        super(JSONMessageCodec.INSTANCE);
    }

    public PlayerViewFactory(BinaryMessenger messenger, Activity activity) {
        super(JSONMessageCodec.INSTANCE);
        this.messenger = messenger;
        this.activity = activity;
    }

    @Override
    public PlatformView create(Context context, int id, Object args) {
        Log.d(TAG, "Creating PlayerView with id: " + id);
        playerView = new PlayerView(context, activity, id, messenger, args);
        return playerView;
    }

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        Log.d(TAG, "onAttachedToEngine");
        this.messenger = binding.getBinaryMessenger();
        binding.getPlatformViewRegistry().registerViewFactory("ae.digitaloasis/NativeVideoPlayer", this);
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        Log.d(TAG, "onDetachedFromEngine");
        this.messenger = null;
    }

    @Override
    public void onAttachedToActivity(@NonNull ActivityPluginBinding binding) {
        Log.d(TAG, "onAttachedToActivity");
        this.activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivityForConfigChanges() {
        Log.d(TAG, "onDetachedFromActivityForConfigChanges");
        this.activity = null;
    }

    @Override
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding binding) {
        Log.d(TAG, "onReattachedToActivityForConfigChanges");
        this.activity = binding.getActivity();
    }

    @Override
    public void onDetachedFromActivity() {
        Log.d(TAG, "onDetachedFromActivity");
        this.activity = null;
    }

    public void onDestroy() {
        Log.d(TAG, "onDestroy");
        if (playerView != null) {
            playerView.dispose();
            playerView = null;
        }
    }
}
