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
  NSUUID *deviceId =  [UIDevice currentDevice].identifierForVendor;

  RCTLogInfo(@"Pretending to create an event");
  callback(@[[NSNull null], [NSArray arrayWithObjects: [deviceId UUIDString], nil]]);
}

@end
