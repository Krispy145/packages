import Flutter
import UIKit

public class SwiftMediaPlugin: NSObject, FlutterPlugin {
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    
    /* register audio player */
    AudioPlayer.register(with: registrar)
    
    /* register video player */
    VideoPlayerFactory.register(with: registrar)
  }
}
