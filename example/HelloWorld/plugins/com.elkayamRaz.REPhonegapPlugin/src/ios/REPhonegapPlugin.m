//
//  REPhonegapPlugin.m
//  
//
//  Created by Raz Elkayam on 7/4/15.
//
//

#import "REPhonegapPlugin.h"

@implementation REPhonegapPlugin

- (void)helloWorld:(CDVInvokedUrlCommand *)command
{
    NSLog(@"hello World!");
    
    NSString *input = [[command.arguments firstObject] firstObject];
    
    if (input && [input length]) {
        
        NSLog(@"%@", input);
        
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:input];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        
    } else {
        
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"no input recieved"];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

@end
