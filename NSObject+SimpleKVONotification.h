//
//  NSObject+SimpleKVONotification.h
//  SimpleKVONotification
//
//  Created by Kevin on 16/8/10.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^KTKvoBlock)(__weak id obj, id oldValue, id newValue);
typedef void (^KTNotificationBlock)(NSNotification *notification);

@interface NSObject (SimpleKVONotification)

- (void)addObserverForKeyPath:(NSString *)keyPath block:(KTKvoBlock)block;
- (void)removeObserverBlocksForKeyPath:(NSString *)keyPath;
- (void)removeAllObserverBlocks;
- (void)addNotificationForName:(NSString *)name block:(KTNotificationBlock)block;
- (void)removeNotificationBlocksForName:(NSString *)name;
- (void)removeAllNotificationBlocks;

@end
