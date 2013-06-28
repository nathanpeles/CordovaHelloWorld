#import "HelloWorldPlugin.h"

@implementation HelloWorldPlugin

- (void)hello:(CDVInvokedUrlCommand *)command {
    NSLog(@"Hello World");
    
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:nil];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void)alert:(CDVInvokedUrlCommand *)command {
    NSString *message = (command.arguments.count > 0) ? command.arguments[0] : nil;
    
    // Display an alert popup.
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message message:nil delegate:nil cancelButtonTitle:@"Close" otherButtonTitles:nil];
    [alert show];
    
    CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
