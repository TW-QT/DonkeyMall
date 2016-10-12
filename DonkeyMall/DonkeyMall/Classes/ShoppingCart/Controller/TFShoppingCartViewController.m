//
//  TFShoppingCartViewController.m
//  302.菜递
//
//  Created by 陶飞 on 16/9/26.
//  Copyright © 2016年 TaoFei. All rights reserved.
//

#import "TFShoppingCartViewController.h"

@interface TFShoppingCartViewController ()

@end

@implementation TFShoppingCartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor brownColor];
    self.navigationItem.title=@"购物车";
    
    
    
    
    //设置购物车的显示数据
    self.tabBarItem.badgeValue=@"122";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
