package ae.digitaloasis.media

import ae.digitaloasis.media.audio.AudioPlayer
import ae.digitaloasis.media.video.PlayerViewFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import android.util.Log

class MediaPlugin : FlutterPlugin, ActivityAware {

  private var audioPlayer: AudioPlayer? = null
  private var playerViewFactory: PlayerViewFactory? = null
  private val TAG = "MediaPlugin"

  override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onAttachedToEngine")
    // Initialize AudioPlayer and PlayerViewFactory
    audioPlayer = AudioPlayer().also {
      it.onAttachedToEngine(binding)
    }
    playerViewFactory = PlayerViewFactory().also {
      it.onAttachedToEngine(binding)
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    Log.d(TAG, "onDetachedFromEngine")
    // Clean up AudioPlayer and PlayerViewFactory
    audioPlayer?.onDetachedFromEngine(binding)
    playerViewFactory?.onDetachedFromEngine(binding)

    audioPlayer = null
    playerViewFactory = null
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    Log.d(TAG, "onAttachedToActivity")
    // Pass activity to AudioPlayer and PlayerViewFactory
    audioPlayer?.onAttachedToActivity(binding)
    playerViewFactory?.onAttachedToActivity(binding)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    Log.d(TAG, "onDetachedFromActivityForConfigChanges")
    // Handle activity detachment for configuration changes
    audioPlayer?.onDetachedFromActivityForConfigChanges()
    playerViewFactory?.onDetachedFromActivityForConfigChanges()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    Log.d(TAG, "onReattachedToActivityForConfigChanges")
    // Handle reattachment after configuration changes
    audioPlayer?.onReattachedToActivityForConfigChanges(binding)
    playerViewFactory?.onReattachedToActivityForConfigChanges(binding)
  }

  override fun onDetachedFromActivity() {
    Log.d(TAG, "onDetachedFromActivity")
    // Handle final activity detachment
    audioPlayer?.onDetachedFromActivity()
    playerViewFactory?.onDetachedFromActivity()
  }
}
