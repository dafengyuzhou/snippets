//___FILEHEADER___

#import "___FILEBASENAME___.h"
/*ViewController*/

/*View&&Util*/

/*model*/

/*Service*/

@interface ___FILEBASENAMEASIDENTIFIER___ ()

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)init {
    if (self = [super init]) {
        self.hidesBottomBarWhenPushed = YES;
        self.titleSizeNormal = 16;
        self.titleSizeSelected = 16;
        self.progressHeight = 3;
        self.progressViewCornerRadius = 2;
        self.titleFontName = @"PingFangSC-Medium";
        self.menuViewStyle = WMMenuViewStyleLine;
        self.progressColor = [GKTColors color_fa8919];
        self.progressWidth = 62;
        self.progressViewIsNaughty = YES;
        self.titleColorSelected = [GKTColors color_353535];;
        self.titleColorNormal = [UIColor colorWithHexString:@"A5A5A5"];
        self.menuViewLayoutMode = WMMenuViewLayoutModeLeft;
        self.menuItemWidth = self.view.width/5*2;
    }
    return self;
}


#pragma mark - life cycle
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self rightPlayButtonItem]; //即使当前不需要展示，也要调用一下。否则就不监听播放状态了

    self.title = <#value #>;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

#ifdef DEBUG
- (void)dealloc {
    NSLog(@"%s", __func__);
}
#endif

#pragma mark - public Method

#pragma mark - private method

#pragma mark - event response

#pragma mark - delegate method
- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController {
    return <#value #>;
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index {
    switch (<#value #>) {
        case 0: return <#value #>;
        case 1: return <#value #>;
    }
    return @"";
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index {
    <#value #> *vc = [[<#value #> alloc] init];
    return vc;
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForMenuView:(WMMenuView *)menuView {
    CGFloat originY = CGRectGetMaxY(self.navigationController.navigationBar.frame);
    return CGRectMake(self.view.frame.size.width/10, originY, self.view.frame.size.width, 44);
}

- (CGRect)pageController:(WMPageController *)pageController preferredFrameForContentView:(WMScrollView *)contentView {
    CGFloat originY = CGRectGetMaxY([self pageController:pageController preferredFrameForMenuView:self.menuView]);
    return CGRectMake(0, originY+5, self.view.frame.size.width, self.view.frame.size.height - originY-5);
}

#pragma mark - getters and setters

@end
