'use strict';

var DeviceUUID = require('react-native').NativeModules.DeviceUUID;

/**
 * High-level docs for the Sample iOS API can be written here.
 */

module.exports = {
  getUUID() {
    return new Promise((resolve, reject) => {
      DeviceUUID.getUUID((error, uuid) => {
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
