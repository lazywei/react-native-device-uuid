//
//  RCTDeviceUUID.h
//  RCTDeviceUUID
//
//  Created by Johannes Lumpe on 12/04/15.
//  Copyright (c) 2015 Johannes Lumpe. All rights reserved.
//

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif
#import "RCTBridge.h"

#import "RCTLog.h"

@interface RCTDeviceUUID : NSObject <RCTBridgeModule>

@end
