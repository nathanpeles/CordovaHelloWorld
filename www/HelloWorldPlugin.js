function HelloWorldPlugin() {}

HelloWorldPlugin.prototype.hello = function() {
    cordova.exec(null, null, "HelloWorldPlugin", "hello", []);
}

HelloWorldPlugin.prototype.helloCallback = function(successCallback, errorCallback) {
    cordova.exec(successCallback, errorCallback, "HelloWorldPlugin", "hello", []);
}

HelloWorldPlugin.prototype.alert = function(message) {
    cordova.exec(null, null, "HelloWorldPlugin", "alert", [message]);
}

// Install plugin.
if (!window.plugins) {
    window.plugins = {};
}

window.plugins.helloWorld = new HelloWorldPlugin();
