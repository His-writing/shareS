//
//  ViewController.m
//  shareS
//
//  Created by shuzhenguo on 16/4/12.
//  Copyright © 2016年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
#import "ShareActivity.h"

@interface ViewController ()<ShareActivityDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Click:(id)sender {
    
    NSArray *shareButtonTitleArray = [[NSArray alloc] init];
    NSArray *shareButtonImageNameArray = [[NSArray alloc] init];
    
    //        if (self.tapIndex == 0) {
    shareButtonTitleArray = @[@"短信",@"邮件",@"新浪微博",@"微信",@"微信朋友圈",@"eurfurye"];
    shareButtonImageNameArray = @[@"sns_icon_19",@"sns_icon_18",@"sns_icon_1",@"sns_icon_22",@"sns_icon_23",@"sns_icon_10"];
    //        }
    
    ShareActivity *lxActivity = [[ShareActivity alloc] initWithTitle:@"分享到社交平台" delegate:self cancelButtonTitle:@"取消" ShareButtonTitles:shareButtonTitleArray withShareButtonImagesName:shareButtonImageNameArray];
    
    [lxActivity showInView:self.view];

}

- (void)didClickOnImageIndex:(NSInteger *)imageIndex
{
    NSLog(@"%d",(int)imageIndex);
}

- (void)didClickOnCancelButton
{
    NSLog(@"didClickOnCancelButton");
}

@end
