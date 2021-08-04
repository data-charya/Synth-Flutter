#import "SynthPlugin.h"
#if __has_include(<synth/synth-Swift.h>)
#import <synth/synth-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "synth-Swift.h"
#endif

@implementation SynthPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSynthPlugin registerWithRegistrar:registrar];
}
@end
