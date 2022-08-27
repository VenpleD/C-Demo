//
//  ViewController.m
//  TestLayer
//
//  Created by duanwenpu on 2022/7/7.
//

#import "ViewController.h"
#import "AView.h"
#import "BView.h"
#import "UIImage+Corner.h"
#import "UISubImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(50, 100, 100, 50);
    label.text = @"放假都i啊附近的";
    UIColor *color = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor redColor];
        } else {
            return [UIColor blueColor];
        }
    }];
    label.textColor = [UIColor colorWithDynamicProvider:^UIColor * _Nonnull(UITraitCollection * _Nonnull traitCollection) {
        if (traitCollection.userInterfaceStyle == UIUserInterfaceStyleDark) {
            return [UIColor blueColor];
        } else {
            return [UIColor redColor];
        }
    }];
    UISubImage *image;
    UIImage *image2 = [image resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 10) resizingMode:UIImageResizingModeStretch];
    [self.view addSubview:label];

    
//    AView *a = [AView new];
//    a.frame = CGRectMake(50, 100, 50, 50);
//    a.backgroundColor = [UIColor redColor];
//    [self.view addSubview:a];
//
//    BView *b = [BView new];
//    b.frame = CGRectMake(50, 100, 50, 50);
//    b.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:b];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 200, 50, 50);
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void)testCorner {
    UIImageView *imageView1 = [UIImageView new];
    imageView1.frame = CGRectMake(50, 50, 100, 50);
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(25, 0)];
    [path addArcWithCenter:CGPointMake(25, 25) radius:25 startAngle:-M_PI_2 endAngle:M_PI_2 clockwise:NO];
//    [path addCurveToPoint:CGPointMake(25, 50) controlPoint1:CGPointMake(0, 0) controlPoint2:CGPointMake(0, 50)];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.lineWidth = 1;
    layer.strokeColor = [UIColor blueColor].CGColor;
    layer.path = path.CGPath;
    layer.fillColor = nil;
    [imageView1.layer addSublayer:layer];
//    imageView1.image = [UIImage createPureColorImage:[UIColor blueColor] corner:imageView1.frame.size.height / 2 + 4 rect:imageView1.bounds];
    [self.view addSubview:imageView1];
    
    UIImageView *imageView2 = [UIImageView new];
    imageView2.frame = CGRectMake(50, 100, 100, 50);
    imageView2.backgroundColor = [UIColor redColor];
    imageView2.layer.cornerRadius = imageView2.frame.size.height / 2;
    imageView2.layer.masksToBounds = YES;
    [self.view addSubview:imageView2];
    
    UIImageView *imageView3 = [UIImageView new];
    imageView3.frame = CGRectMake(150, 50, 100, 30);
    imageView3.image = [UIImage createPureColorImage:[UIColor blueColor] corner:20 rect:imageView3.bounds];
    [self.view addSubview:imageView3];
    
    UIImageView *imageView4 = [UIImageView new];
    imageView4.frame = CGRectMake(150, 100, 100, 30);
    imageView4.backgroundColor = [UIColor blueColor];
    imageView4.layer.cornerRadius = 20;
    imageView4.layer.masksToBounds = YES;
    [self.view addSubview:imageView4];
}

- (void)buttonClick {
    for (UIView *view in self.view.subviews) {
        
    }
}

@end
