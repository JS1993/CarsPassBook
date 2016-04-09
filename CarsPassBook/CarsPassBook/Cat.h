//
//  Cat.h
//  CarsPassBook
//
//  Created by  江苏 on 16/4/9.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cat : NSObject
@property(nonatomic,copy)NSString* name;
@property(nonatomic,copy)NSString* icon;

+(NSArray*)carsWithArray:(NSArray*)array;
@end
