//
//  TFTabBarController.m
//  302.菜递
//
//  Created by 陶飞 on 16/9/26.
//  Copyright © 2016年 TaoFei. All rights reserved.
//

#import "TFTabBarController.h"
#import "TFNavigationController.h"
#import "TFHomePageViewController.h"
#import "TFSurpriseViewController.h"
#import "TFShoppingCartViewController.h"
#import "TFPersonalCenterViewController.h"

@interface TFTabBarController ()

@end

@implementation TFTabBarController

+(void)initialize{
  
    
    //设置文字颜色的代码----------------------------------------------------------
    NSMutableDictionary *atrrs=[NSMutableDictionary dictionary];
    atrrs[NSFontAttributeName]=[UIFont systemFontOfSize:12];//字体保持一致
    atrrs[NSForegroundColorAttributeName]=[UIColor grayColor];
    
    NSMutableDictionary *selectedAtrrs=[NSMutableDictionary dictionary];
    selectedAtrrs[NSFontAttributeName]=atrrs[NSFontAttributeName];//字体保持一致
    selectedAtrrs[NSForegroundColorAttributeName]=[UIColor darkGrayColor];
    
    
    //设置UITabBarItem的appearance,通过appearance统一设置所有UITabBarItem的文字属性
    UITabBarItem *item=[UITabBarItem appearance];
    [item setTitleTextAttributes:atrrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAtrrs forState:UIControlStateSelected];
    //设置文字颜色的代码------------------------------------------------------------
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    //添加子控制器
    

    [self setupChildVc:[[TFHomePageViewController alloc]init] title:@"主页" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVc:[[TFSurpriseViewController  alloc]init] title:@"惊喜" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupChildVc:[[TFShoppingCartViewController  alloc]init] title:@"购物车" image:@"icon-car-n" selectedImage:@"icon-car-s"];
    [self setupChildVc:[[TFPersonalCenterViewController  alloc]init] title:@"我" image:@"icon-personal-n" selectedImage:@"icon-personal-s"];
    
    
//    //更换tabBar,readOnly,此时使用KVC
//    [self setValue:[[TFTabBar alloc]init] forKey:@"tabBar"];
}



/**
 *初始化子控制器
 */
-(void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    //设置文字好图片
    
    vc.tabBarItem.title=title;//title参数
    vc.tabBarItem.image=[UIImage imageNamed:image];//未选中的图片
    vc.tabBarItem.selectedImage=[UIImage imageNamed:selectedImage];//选中时的图片
    
    //不要在这里设置背景色,在这里设置背景色会导致view会被提前创建
    
    //包装一个导航控制器
    TFNavigationController *nav=[[TFNavigationController alloc]initWithRootViewController:vc];
    
    //添加导航控制器为子控制器
    [self addChildViewController:nav];
    
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
