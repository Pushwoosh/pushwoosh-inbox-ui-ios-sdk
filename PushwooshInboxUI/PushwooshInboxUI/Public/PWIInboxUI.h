//
//  PWIInboxUI.h
//  PushwooshInboxUI
//
//  Created by Pushwoosh on 01/11/2017.
//  Copyright © 2017 Pushwoosh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class PWIInboxStyle, PWIInboxViewController;
@interface PWIInboxUI : NSObject

/**
 @return ViewController with a specified style
 */
+ (UIViewController *)createInboxControllerWithStyle:(PWIInboxStyle *)style;

@end
