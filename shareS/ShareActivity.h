//
//  LXActivity.h
//  LXActivityDemo
//
//  Created by lixiang on 14-3-17.
//  Copyright (c) 2014年 lcolco. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ShareActivityDelegate <NSObject>

- (void)didClickOnImageIndex:(NSInteger *)imageIndex;
@optional
- (void)didClickOnCancelButton;
@end

@interface ShareActivity : UIView

- (id)initWithTitle:(NSString *)title delegate:(id<ShareActivityDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle ShareButtonTitles:(NSArray *)shareButtonTitlesArray withShareButtonImagesName:(NSArray *)shareButtonImagesNameArray;
- (void)showInView:(UIView *)view;



@end
