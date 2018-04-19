//
//  XMGTool.m
//  单例模式的实现
//
//  Created by fenggao on 2018/4/19.
//  Copyright © 2018年 com.zhonglu. All rights reserved.
//

#import "XMGTool.h"

@implementation XMGTool
//static 全局的静态变量 (对外界隐藏)
//static修饰的变量的生命周期是程序启动就存在 直到程序结束
static XMGTool *_instance;
//重写alloc方法 保证永远只分配一次存储空间
//alloc->allocWithZone(分配存储空间)
+(instancetype)alloc
{
    
}
//真正分配存储空间的方法
+(instancetype)allocWithZone:(struct _NSZone *)zone
{
//    @synchronized(self){
//        if (_instance ==nil) {
//            _instance = [super allocWithZone:zone];
//        }
//    }
//    return _instance;
    //只执行一次 线程安全
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

+(instancetype)shareTool
{
    return [[self alloc] init];
}

-(id)copyWithZone:(NSZone *)zone
{
    return _instance;
}

-(id)mutableCopyWithZone:(NSZone *)zone
{
    return _instance;
}
@end
































