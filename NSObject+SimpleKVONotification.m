//
//  NSObject+SimpleKVONotification.m
//  SimpleKVONotification
//
//  Created by Kevin on 16/8/10.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "NSObject+SimpleKVONotification.h"

@interface KTObserver : NSObject

@property (nonatomic, copy) KTKvoBlock kvoBlock;
@property (nonatomic, copy) KTNotificationBlock notificationBlock;

- (instancetype)initWithKvoBlock:(KTKvoBlock)kvoBlock;
- (instancetype)initWithNotificationBlock:(KTNotificationBlock)notificationBlock;

@end

@implementation KTObserver

- (instancetype)initWithKvoBlock:(KTKvoBlock)kvoBlock
{
    if (self = [super init]) {
        _kvoBlock = kvoBlock;
    }
    
    return self;
}

- (instancetype)initWithNotificationBlock:(KTNotificationBlock)notificationBlock
{
    if (self = [super init]) {
        _notificationBlock = notificationBlock;
    }
    
    return self;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    
}

- (void)handleNotification:(NSNotification *)notification
{
    if (self.notificationBlock) {
        self.notificationBlock(notification);
    }
}

@end

@implementation NSObject (SimpleKVONotification)

- (void)addObserverForKeyPath:(NSString *)keyPath block:(KTKvoBlock)block
{
}

@end
