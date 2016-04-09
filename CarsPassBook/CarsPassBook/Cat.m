//
//  Cat.m
//  CarsPassBook
//
//  Created by  江苏 on 16/4/9.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "Cat.h"

@implementation Cat
-(instancetype)initWithDict:(NSDictionary*)dict{
    self=[super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
+(instancetype)carWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
+(NSArray*)carsWithArray:(NSArray*)array{
    NSMutableArray* arrM=[NSMutableArray array];
    for (NSDictionary* dic in array ) {
        [arrM addObject:[self carWithDict:dic]];
    }
    return arrM;
}

@end
