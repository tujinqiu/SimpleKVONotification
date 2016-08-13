# SimpleKVONotification
简化KVO以及notification，自动remove observer
采用block回调

用法：

1、#import "NSObject+SimpleKVONotification.h"

2、像下面这样
```
    [self.tableView addObserverForKeyPath:NSStringFromSelector(@selector(contentOffset)) block:^(__weak id obj, id oldValue, id newValue) {
        NSLog(@"old value:%@ new value:%@", NSStringFromCGPoint([oldValue CGPointValue]), NSStringFromCGPoint([newValue CGPointValue]));
    }];
```

3、不需要这样的代码了，自动完成remove操作
```
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationWillEnterForegroundNotification object:nil];
    [self.tableView removeObserver:self forKeyPath:NSStringFromSelector(@selector(contentOffset))];
}
```
