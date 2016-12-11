//
//  ViewController.m
//  01-CALayer的基本操作.(熟悉)
//
//  Created by 李亮 on 2016/12/8.
//  Copyright © 2016年 www.thelast.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.imageView.layer.shadowOffset = CGSizeMake(10, 10);
    self.imageView.layer.shadowColor = [UIColor redColor].CGColor;
    //设置阴影的不透明度
    self.imageView.layer.shadowOpacity = 1;
    //设置阴影的模糊的半径
    self.imageView.layer.shadowRadius = 30;
    
    self.imageView.layer.cornerRadius = 50;
    self.imageView.layer.borderWidth = 5;
    self.imageView.layer.borderColor = [UIColor greenColor].CGColor;
//    self.imageView.layer.masksToBounds = YES;
    
    NSLog(@"%@",self.imageView.layer.contents);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
