//
//  RNPlayerMusicModule.m
//  RNPlayerMusicModule
//
//  Created by Duong Kien on 7/15/18.
//  Copyright © 2018 KienDuong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(RNPlayerMusicModule, NSObject)

RCT_EXTERN_METHOD(play: (NSString *)songName callback:(RCTResponseSenderBlock)callback);

RCT_EXTERN_METHOD(stop);

@end
