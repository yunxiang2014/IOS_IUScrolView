//
//  ViewController.m
//  IUScrolView
//
//  Created by ChaiYunxiang on 2/25/15.
//  Copyright (c) 2015 ChaiYunxiang. All rights reserved.
//

#import "ViewController.h"
#define ImageCount 5
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

//@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
//@property (nonatomic, strong) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGFloat width = 400;
    //NSLog(width);
    CGFloat height = 600;
    //1.scrollView（）
    //    2.add image to scrollView
    
    for (int i = 1; i < ImageCount + 1; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        CGFloat imageX = (i - 1) * width;
        CGFloat imageY = 0.f;
        imageView.frame = CGRectMake(imageX, imageY, width, height);
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"img_%02d", i]];
        [self.scrollView addSubview:imageView];
    }

    
    
    
    self.scrollView.contentSize = CGSizeMake(ImageCount * width, 0);
    
    // separated pages
    self.scrollView.pagingEnabled = YES;

    
}







@end
