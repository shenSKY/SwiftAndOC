//
//  OCFile.h
//  Swift调用OC
//
//  Created by 沈凯 on 2017/7/6.
//  Copyright © 2017年 Ssky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OCFile : NSObject

- (void)sayHello;

- (void)saySomething:(NSString *)str;

- (void)sayCallback:(void(^)(NSString *))callback;

- (void)saySomething:(NSString *)str callback:(void(^)(NSString *))callback;

- (void)saySomething1:(NSString *)str1 Something2:(NSString *)str2 callback:(void(^)(NSString *))callback;
@end
