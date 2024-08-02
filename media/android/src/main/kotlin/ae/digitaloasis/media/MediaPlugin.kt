package ae.digitaloasis.media

import io.flutter.plugin.common.PluginRegistry.Registrar
import ae.digitaloasis.media.audio.AudioPlayer
import ae.digitaloasis.media.video.PlayerViewFactory

class MediaPlugin {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      PlayerViewFactory.registerWith(registrar)
      AudioPlayer.registerWith(registrar)
    }
  }
}
