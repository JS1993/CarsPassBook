//
//  Cars.h
//  CarsPassBook
//
//  Created by  江苏 on 16/4/9.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cars : NSObject
@property(copy,nonatomic)NSString* title;
@property(strong,nonatomic)NSArray* cars;

+(NSArray*)cars;
@end
