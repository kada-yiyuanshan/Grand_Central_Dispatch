//
//  SendMessageController.m
//  Thread_Test
//
//  Created by kada on 13-6-20.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import "SendMessageController.h"

@interface SendMessageController ()

@end

@implementation SendMessageController
@synthesize delegate;
@synthesize textfield;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.title=@"Send";
    }
    return self;
}
-(void)dealloc
{
    [super dealloc];
    [textfield release];
}
-(IBAction)bg:(id)sender
{
    [textfield resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *senditem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(send:)];
    self.navigationItem.rightBarButtonItem=senditem;
    [senditem release];
}
-(IBAction)send:(id)sender
{
    [delegate Message:self.textfield.text];
    [self.navigationController popViewControllerAnimated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
