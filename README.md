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

## Troubleshooting

### DeviceUUID just hangs and does not log the uuid to the console ([#2](https://github.com/lazywei/react-native-device-uuid/issues/2)), thanks to [@irfaan](https://github.com/irfaan)

1. In XCode, in the project navigator, right click Libraries
2. Add Files to [your project's name]
3. Go to node\_modules
4. react-native-device-uuid and add the .xcodeproj file
5. In XCode, in the project navigator, select your project
6. Add the lib\*.a from the react-native-device-uuid project to your project's Build Phases - Link Binary With Libraries. Select the .a file.
7. Go to the Build Settings tab.
8. Make sure 'All' is toggled on (instead of 'Basic').
9. Look for Header Search Paths and make sure it contains both `$(SRCROOT)/../react-native/React` and `$(SRCROOT)/../../React` - mark both as recursive.

