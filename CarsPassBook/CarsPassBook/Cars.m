//
//  Cars.m
//  CarsPassBook
//
//  Created by  江苏 on 16/4/9.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "Cars.h"
#import "Cat.h"
@implementation Cars
-(instancetype)initWithDict:(NSDictionary*)dict{
    self=[super init];
    if (self) {
        [self setValue:dict[@"title"] forKey:@"title"];
        self.cars=[Cat carsWithArray:dict[@"cars"]];
    }
    return self;
}
+(instancetype)carsWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}
+(NSArray*)cars{
    NSMutableArray* arrX=[NSMutableArray array];
    NSArray* arr=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cars_total" ofType:@"plist"]];
    for (NSDictionary* dic in arr ) {
        [arrX addObject:[self carsWithDict:dic]];
    }
    return arrX;
}

@end
