//
//  SendMessageController.h
//  Thread_Test
//
//  Created by kada on 13-6-20.
//  Copyright (c) 2013年 kada. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIResponder_MessageDelegate.h"

@interface SendMessageController : UIViewController<UITextFieldDelegate>
{
    id<Delegate>  delegate;
    UITextField *textfield;
}

@property(assign,nonatomic) id<Delegate> delegate;
@property(retain,nonatomic) IBOutlet UITextField *textfield;
-(IBAction)send:(id)sender;
-(IBAction)bg:(id)sender;
@end
