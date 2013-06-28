#import <Cordova/CDVPlugin.h>

@interface HelloWorldPlugin : CDVPlugin

- (void)hello:(CDVInvokedUrlCommand *)command;

- (void)alert:(CDVInvokedUrlCommand *)command;

@end
