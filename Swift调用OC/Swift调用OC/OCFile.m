//
//  OCFile.m
//  Swift调用OC
//
//  Created by 沈凯 on 2017/7/6.
//  Copyright © 2017年 Ssky. All rights reserved.
//

#import "OCFile.h"

@implementation OCFile

- (void)sayHello
{
    NSLog(@"Hello World");
}

- (void)saySomething:(NSString *)str
{
    NSLog(@"%@",str);
}

- (void)sayCallback:(void (^)(NSString *))callback
{
    if (callback) {
        callback(@"Hello World 3");
    }
}

- (void)saySomething:(NSString *)str callback:(void (^)(NSString *))callback
{
    if (callback) {
        callback(str);
    }
}

- (void)saySomething1:(NSString *)str1 Something2:(NSString *)str2 callback:(void (^)(NSString *))callback
{
    if (callback) {
        callback([NSString stringWithFormat:@"%@ %@",str1,str2]);
    }
}
@end
