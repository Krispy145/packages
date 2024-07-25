#import "MediaPlugin.h"
#import <media/media-Swift.h>

@implementation MediaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediaPlugin registerWithRegistrar:registrar];
}
@end
