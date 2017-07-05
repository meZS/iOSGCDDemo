//
//  AppGCD.m
//  IOSGCD
//
//  Created by wordy on 2017/7/5.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "AppGCD.h"


@implementation AppGCD
// 创建单列对象
+ (instancetype)sharedInstance
{
       static AppGCD *_appGCD =nil;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _appGCD = [[AppGCD alloc] init];
        });
    return _appGCD;
}

- (dispatch_queue_t)getMainQueue
{
    return dispatch_get_main_queue();
}
- (dispatch_queue_t)getGlobalQueue:(dispatch_queue_priority_t)level
{
    //  level:分为高/默认/低/后台四个优先级
    return dispatch_get_global_queue(level, 0);
}

- (dispatch_queue_t)getSerialQueue:(const char  *)label
{
    // 串行队列
    return dispatch_queue_create(label, DISPATCH_QUEUE_SERIAL);
}
- (dispatch_queue_t)getConcurrentQueue:(const char  *)label
{
    // 并行队列
    return dispatch_queue_create(label, DISPATCH_QUEUE_CONCURRENT);
}





@end
