'use strict';

var RCTDeviceUUID = require('NativeModules').DeviceUUID;
var invariant = require('invariant');

/**
 * High-level docs for the Sample iOS API can be written here.
 */

var DeviceUUID = {
  getUUID() {
    return new Promise((resolve, reject) => {
      RCTDeviceUUID.getUUID((error, uuid) => {
        if (error) {
          console.log("Got error when trying to get uuid from Native side");
          reject(error);
        } else {
          resolve(uuid[0]);
        }
      });
    });
  }
};

module.exports = DeviceUUID;
