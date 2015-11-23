//
//  REPhonegapPlugin.h
//  
//
//  Created by Raz Elkayam on 7/4/15.
//
//

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>

@interface REPhonegapPlugin : CDVPlugin

// spawn JS events - must declare in plugin.js
//    [self.commandDelegate evalJs:@"ClassName.Method(JSON_Dictionary)"];

// plugin.js example

// Event spawned when a notification is received
//    ClassName.Method.prototype.methodName = function (params) {
//
//        // The notification object
//        var value = JSON.parse(messageParams);
//        var ev = document.createEvent('HTMLEvents');
//        ev.notification = value;
//        ev.initEvent('some.event.identifier', true, true, arguments);
//        document.dispatchEvent(ev);
//    };

- (void)helloWorld:(CDVInvokedUrlCommand *)command;

@end
