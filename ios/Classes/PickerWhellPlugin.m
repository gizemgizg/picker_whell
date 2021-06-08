#import "PickerWhellPlugin.h"
#if __has_include(<picker_whell/picker_whell-Swift.h>)
#import <picker_whell/picker_whell-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "picker_whell-Swift.h"
#endif

@implementation PickerWhellPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPickerWhellPlugin registerWithRegistrar:registrar];
}
@end
