//
//  RCTDeviceUUID.m
//  RCTDeviceUUID
//
//  Created by Johannes Lumpe on 12/04/15.
//  Copyright (c) 2015 Johannes Lumpe. All rights reserved.
//

#import "RCTDeviceUUID.h"
#import "RCTBridge.h"

@implementation RCTDeviceUUID

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getUUID:(RCTResponseSenderBlock)callback)
{
  NSUUID *deviceId;

#if TARGET_IPHONE_SIMULATOR
  deviceId = [NSUUID initWithUUIDString:@"UUID-STRING-VALUE"];
#else
  deviceId = [UIDevice currentDevice].identifierForVendor;
#endif

  RCTLogInfo(@"Pretending to create an event");
  callback(@[[NSNull null], [NSArray arrayWithObjects: [deviceId UUIDString], nil]]);
}

@end
