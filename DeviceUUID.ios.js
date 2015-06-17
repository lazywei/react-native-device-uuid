'use strict';

var RCTDeviceUUID = require('NativeModules').DeviceUUID;
var invariant = require('invariant');

/**
 * High-level docs for the Sample iOS API can be written here.
 */

var DeviceUUID = {
  getUUID: function() {
    RCTDeviceUUID.getUUID();
  }
};

module.exports = DeviceUUID;
