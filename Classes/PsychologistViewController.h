//
//  PsychologistViewController.h
//  Psychologist
//
//  Created by james sa on 2011/3/6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HappinessViewController.h"

@interface PsychologistViewController : UIViewController {
    HappinessViewController *happinessViewController;
}

@property (readonly) HappinessViewController *happinessViewController;

- (IBAction)sad;
- (IBAction)happy;
- (IBAction)soso;

@end
