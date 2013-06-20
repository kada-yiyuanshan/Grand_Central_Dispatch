//
//  ViewController.m
//  Thread_Test
//
//  Created by kada on 13-6-20.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import "ViewController.h"
#import "SendMessageController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lable1,lable2,lable3;
@synthesize string;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       self.navigationItem.title=@"Receive";
    }
    return self;
}

-(void)dealloc
{
    [super dealloc];
    [lable1 release];
    [lable2 release];
    [lable3 release];
    [string release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIBarButtonItem *jumpbutton=[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(jump:)];
    self.navigationItem.rightBarButtonItem=jumpbutton;
    [jumpbutton release];
}
-(void)viewWillAppear:(BOOL)animated
{
    dispatch_async(dispatch_get_global_queue(0,0), ^{
        
//       [self lable2_str];
        dispatch_async(dispatch_get_main_queue(),^{
        [self lable1_str];
        });
        dispatch_group_t  group=dispatch_group_create();
        dispatch_group_async(group, dispatch_get_global_queue(0,0), ^{
            [self lable2_str];
        });
//        dispatch_group_async(group, dispatch_get_global_queue(0,0), ^{
//            [self lable2_str];
//        });
        dispatch_group_notify(group, dispatch_get_global_queue(0, 0), ^{
            [self lable3_str];
        });
    });
}
-(void)lable1_str
{
    [NSThread sleepForTimeInterval:1];
    self.lable1.text=self.string;
}
-(void)lable2_str
{
    [NSThread sleepForTimeInterval:2];
    self.lable2.text=self.string;
}
-(void)lable3_str
{
    [NSThread sleepForTimeInterval:3];
    self.lable3.text=self.string;
}
-(IBAction)jump:(id)sender
{
    SendMessageController *sendmessage=[[SendMessageController alloc] initWithNibName:@"SendMessageController" bundle:nil];
    sendmessage.delegate = self;
    [self.navigationController pushViewController:sendmessage animated:YES ];
    [sendmessage release];
}
-(void)Message:(NSString *)str
{
    self.string=str;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
