//
//  ViewController.m
//  IOSGCD
//
//  Created by wordy on 2017/7/5.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AppGCD *appGcd = [[AppGCD alloc] init];

    /*
     // 同步执行串行队列
     */
    
//    NSLog(@"==***==主线程=****=%@",[NSThread mainThread]);
    dispatch_queue_t queue =  [appGcd getSerialQueue:"www.zsnslog.com"];
//    dispatch_sync(queue, ^{
//       
//        NSLog(@"任务==1%@",  [NSThread currentThread]);
//    });
//    dispatch_sync(queue, ^{
//        
//        NSLog(@"任务==2%@",  [NSThread currentThread]);
//    });
//    dispatch_sync(queue, ^{
//    
//        NSLog(@"任务==3%@",  [NSThread currentThread]);
//    });
//    // 总结: 没有开启线程
//      NSLog(@"**********总结: 没有开启线程*********");
    /*
     异步执行串行队列
     */
    
    NSLog(@"==***==主线程=****=%@",[NSThread mainThread]);
    dispatch_async(queue, ^{
        
        NSLog(@"任务==1%@",  [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"任务==2%@",  [NSThread currentThread]);
    });
    dispatch_async(queue, ^{
        
        NSLog(@"任务==3%@",  [NSThread currentThread]);
    });
      NSLog(@"*********总结:会开启线程，但是只开启一个线程**************");
  
    /*
     异步执行并行队列
     */
    
//    NSLog(@"==***==主线程=****=%@",[NSThread mainThread]);
//    dispatch_queue_t queue1 = [appGcd getConcurrentQueue:"www.bingxing.com"];
//    dispatch_async(queue1, ^{
//        
//        NSLog(@"任务==1%@",  [NSThread currentThread]);
//    });
//    dispatch_async(queue1, ^{
//        
//        NSLog(@"任务==2%@",  [NSThread currentThread]);
//    });
//    dispatch_async(queue1, ^{
//        
//        NSLog(@"任务==3%@",  [NSThread currentThread]);
//    });
//    NSLog(@"************总结：同时开启三个子线程************");
//    
//    
//    
//    NSLog(@"==***==主线程=****=%@",[NSThread mainThread]);
//    /*
//     同步执行并行队列
//     */
//    dispatch_sync(queue1, ^{
//        
//        NSLog(@"任务==1%@",  [NSThread currentThread]);
//    });
//    dispatch_sync(queue1, ^{
//        
//        NSLog(@"任务==2%@",  [NSThread currentThread]);
//    });
//    dispatch_sync(queue1, ^{
//        
//        NSLog(@"任务==3%@",  [NSThread currentThread]);
//    });
//    NSLog(@"******总结：不会开启新的线程，并发队列失去了并发的功能*******");
//    
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
