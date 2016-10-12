//
//  TFHomePageViewController.m
//  302.菜递
//
//  Created by 陶飞 on 16/9/26.
//  Copyright © 2016年 TaoFei. All rights reserved.
//

#import "TFHomePageViewController.h"

@interface TFHomePageViewController ()

@end

@implementation TFHomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor=[UIColor greenColor];
    
    //设置顶部的导航
    [self setupNavigation];
    
    //设置主的tableView
    [self setupMainTableView];
    
    
    
    

    
    
    
}
/**
 *  设置主的tableView
 */
-(void)setupMainTableView{
    
    
    
    
    CGRect tableViewFrame=CGRectMake(0, 0, TFScreenW, TFScreenH);
    
    UITableView *mainTableView=[[UITableView alloc]initWithFrame:tableViewFrame style:UITableViewStylePlain];
    mainTableView.backgroundColor=[UIColor blueColor];

    [self.view addSubview:mainTableView];
    
    
    //设置headerView
//    mainTableView.tableHeaderView=[];





}

/**
 *  设置主页顶部的navigation
 */
-(void)setupNavigation{
    
    
    
    
    //设置navigation的titleView

    
    
    //设置顶部的titleView
    UIView *titleView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    
    //搜索
    UISearchBar * searchBar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    searchBar.searchBarStyle=UISearchBarStyleMinimal;//不显示searchBar的背景
    searchBar.placeholder=@"搜索菜递商品";
#warning delegate
    
    [titleView addSubview:searchBar];
    
    self.navigationItem.titleView=titleView;
    
    
    //设置右边的
    self.navigationItem.rightBarButtonItem=[UIBarButtonItem itemWithImage:@"icon-myReview" highImage:@"icon-myReview" target:self action:@selector(messageClick)];
    //设置左边的
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithImage:@"icon-myReview" highImage:@"icon-myReview" target:self action:@selector(messageClick)];




}

/**
 *  messageClick
 */
-(void)messageClick{

    TFLog(@"主页的navigation的右边按钮被点击了");

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
