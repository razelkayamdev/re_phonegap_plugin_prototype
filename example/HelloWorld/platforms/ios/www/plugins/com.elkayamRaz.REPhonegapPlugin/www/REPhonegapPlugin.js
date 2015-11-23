cordova.define("com.elkayamRaz.REPhonegapPlugin.REPhonegapPlugin", function(require, exports, module) { //
//  REPhonegapPlugin.js
//  
//
//  Created by Raz Elkayam on 7/4/15.
//
//

var exec = require('cordova/exec');

function REPhonegapPlugin() {}

REPhonegapPlugin.prototype.helloWorld = function(message, successCallback, errorCallback) {

	exec(
		successCallback, // A callback function that deals with the JSON object from the CDVPluginResult instance
		errorCallback, // An error handler
		'REPhonegapPlugin', // What class to target messages to (method calls = message in ObjC)
		'helloWorld', // Which method to call
		[message] // These go in the CDVInvokedUrlCommand instance's.arguments property
	);
}

module.exports = new REPhonegapPlugin();
});
