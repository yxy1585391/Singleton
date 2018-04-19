//
//  XMGTool.h
//  单例模式的实现
//
//  Created by fenggao on 2018/4/19.
//  Copyright © 2018年 com.zhonglu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGTool : NSObject<NSCopying,NSMutableCopying>

//提供类方法 方便外界访问
//规范 share+ 类名  default+类名
+(instancetype)shareTool;
@end
