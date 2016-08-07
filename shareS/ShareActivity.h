
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
