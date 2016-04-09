//
//  ViewController.m
//  CarsPassBook
//
//  Created by  江苏 on 16/4/9.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "Cars.h"
#import "Cat.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView* tableView;
@property(nonatomic,strong)NSArray* cars;
@end

@implementation ViewController
-(UITableView *)tableView{
    if (_tableView==nil) {
        _tableView=[[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate=self;
        _tableView.dataSource=self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

-(NSArray *)cars{
    if (_cars==nil) {
        _cars=[Cars cars];
    }
    return _cars;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.cars.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    Cars* cars=self.cars[section];
    return cars.cars.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier=@"Cell";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    Cars* car=self.cars[indexPath.section];
    Cat* cat=car.cars[indexPath.row];
    cell.imageView.image=[UIImage imageNamed:cat.icon];
    cell.textLabel.text=cat.name;
    return cell;
}
//设置顶部标签
- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.cars[section] title];
}
//产生右侧索引
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    return [self.cars valueForKeyPath:@"title"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self tableView];
}

@end
