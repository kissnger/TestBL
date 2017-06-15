//
//  ViewController.m
//  CustomKeyboard
//
//  Created by massimo on 2017/6/11.
//  Copyright © 2017年 massimo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic, weak)IBOutlet UIView *inputV;
@property (nonatomic, weak)IBOutlet UITextField *field;
@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  
  _field.inputView = _inputV;
  UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapedBackground:)];
  [self.view addGestureRecognizer:tap];
  
}

-(void)tapedBackground:(UITapGestureRecognizer *)tap{
  [self.view endEditing:YES];    
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
