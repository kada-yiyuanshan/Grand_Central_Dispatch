//
//  ViewController.h
//  Thread_Test
//
//  Created by kada on 13-6-20.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIResponder_MessageDelegate.h"
@interface ViewController : UIViewController<Delegate>
{
    UILabel *lable1;
    UILabel *lable2;
    UILabel *lable3;
    NSString *string;
}

@property(retain,nonatomic) IBOutlet UILabel *lable1;
@property(retain,nonatomic) IBOutlet UILabel *lable2;
@property(retain,nonatomic) IBOutlet UILabel *lable3;
@property(retain,nonatomic) NSString *string;

-(IBAction)jump:(id)sender;

@end
