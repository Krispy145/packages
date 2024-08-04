package ae.digitaloasis.media.video;

import android.app.Activity;
import android.content.Context;
import android.view.View;

import org.jetbrains.annotations.NotNull;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.platform.PlatformView;

public class PlayerView implements PlatformView, MethodChannel.MethodCallHandler {

    private final PlayerLayout playerLayout;

    public PlayerView(Context context, Activity activity, int id, BinaryMessenger messenger, Object args) {
        // Set up the method channel to communicate with the Flutter side
        new MethodChannel(messenger, "ae.digitaloasis/NativeVideoPlayerMethodChannel_" + id)
                .setMethodCallHandler(this);

        // Initialize the PlayerLayout which contains the ExoPlayer logic
        playerLayout = new PlayerLayout(context, activity, messenger, id, args);
    }

    @Override
    public View getView() {
        // Return the view associated with the player layout
        return playerLayout.getView();
    }

    @Override
    public void dispose() {
        // Clean up resources
        playerLayout.onDestroy();
    }

    @Override
    public void onMethodCall(MethodCall call, @NotNull MethodChannel.Result result) {
        // Handle method calls from the Flutter side
        switch (call.method) {
            case "onMediaChanged":
                playerLayout.onMediaChanged(call.arguments);
                result.success(true);
                break;
            case "onShowControlsFlagChanged":
                playerLayout.onShowControlsFlagChanged(call.arguments);
                result.success(true);
                break;
            case "resume":
                playerLayout.play();
                result.success(true);
                break;
            case "pause":
                playerLayout.pause();
                result.success(true);
                break;
            case "setPreferredAudioLanguage":
                playerLayout.setPreferredAudioLanguage(call.arguments);
                result.success(true);
                break;
            case "setPreferredTextLanguage":
                playerLayout.setPreferredTextLanguage(call.arguments);
                result.success(true);
                break;
            case "seekTo":
                playerLayout.seekTo(call.arguments);
                result.success(true);
                break;
            case "dispose":
                dispose();
                result.success(true);
                break;
            default:
                result.notImplemented();
        }
    }
}
