//
//  NEOViewController.m
//  ColorPickerExample
//
//  Created by Karthik Abram on 12/28/12.
//  Copyright (c) 2012 Neovera.
//

#import "NEOViewController.h"
#import "NEOColorPickerViewController.h"

@interface NEOViewController () <NEOColorPickerViewControllerDelegate>

@property (nonatomic, strong) UIColor *currentColor;

@end

@implementation NEOViewController

- (id) init {
    if (self = [super init]) {
        self.currentColor = [UIColor blackColor];
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)buttonPressPickColor:(id)sender {
    NEOColorPickerViewController *controller = [[NEOColorPickerViewController alloc] init];
    controller.delegate = self;
    controller.currentColor = self.currentColor;
    controller.dialogTitle = @"Example";
    
    [self presentViewController:controller animated:YES completion:nil];
}


- (void)colorPickerViewController:(NEOColorPickerBaseViewController *)controller didSelectColor:(UIColor *)color {
    self.view.backgroundColor = color;
    [controller dismissViewControllerAnimated:YES completion:nil];
}
@end
