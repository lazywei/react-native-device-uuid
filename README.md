react-native-device-uuid
=========================

## What?

Allow developer to retrieve iOS's [identifierForVendor](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/index.html#//apple_ref/occ/instp/UIDevice/identifierForVendor) as UUID for React Native Application.

## Why?

Sometimes we need an unique identifier (e.g., when implementing special authentication flow) to identify an "user-device" pair.
However, device token, which is mainly used for push notification, is not suitable in such use case. The reason is that device token **can** and **will change**.
For details, please refers to [Is the device token as unique as the device ID?](http://stackoverflow.com/questions/6927011/is-the-device-token-as-unique-as-the-device-id).

## How?

### Install

```bash
npm install --save react-native-device-uuid
```

### Usage

```javascript
var DeviceUUID = require("react-native-device-uuid");
DeviceUUID.getUUID().then((uuid) => {
  console.log(uuid);
});
```
