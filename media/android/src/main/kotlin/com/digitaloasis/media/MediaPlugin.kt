package com.digitaloasis.media

import io.flutter.plugin.common.PluginRegistry.Registrar
import com.digitaloasis.media.audio.AudioPlayer
import com.digitaloasis.media.video.PlayerViewFactory

class MediaPlugin {
  companion object {
    @JvmStatic
    fun registerWith(registrar: Registrar) {
      PlayerViewFactory.registerWith(registrar)
      AudioPlayer.registerWith(registrar)
    }
  }
}
