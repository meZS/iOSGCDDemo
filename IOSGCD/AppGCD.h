//
//  AppGCD.h
//  IOSGCD
//
//  Created by wordy on 2017/7/5.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppGCD : NSObject

+ (instancetype)sharedInstance;




/**
 获取主队列
 @return 主队列
 */
- (dispatch_queue_t)getMainQueue;


/**
 获取全局队列

 @param level 优先级
 @return 全局队列
 */
- (dispatch_queue_t)getGlobalQueue:(dispatch_queue_priority_t)level;


 /**
  获取串行队列

  @param  label  队列名称,字符类型
  @return 串行队列
  */
- (dispatch_queue_t)getSerialQueue:(const char  *)label;


/**
 获取并行队列

 @param label  队列名称,字符类型
 @return 并行队列
 */
- (dispatch_queue_t)getConcurrentQueue:(const char  *)label;






@end
