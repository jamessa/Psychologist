//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by james sa on 2011/3/6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h"


@implementation PsychologistViewController

- (HappinessViewController *) happinessViewController{
    if(!happinessViewController) happinessViewController = [[HappinessViewController alloc] init];
    return happinessViewController;
}

- (void)showDiagnosis:(int)diagnosis {
	self.happinessViewController.happiness = diagnosis;
    self.happinessViewController.title = [NSString stringWithFormat:@"diagnosis = %d",diagnosis];
    if (self.happinessViewController.view.window == nil) {
        [self.navigationController pushViewController:self.happinessViewController animated:YES];
    }
}

- (IBAction)sad {
	[self showDiagnosis:0];
}

- (IBAction)happy {
	[self showDiagnosis:100];
}

- (IBAction)soso {
	[self showDiagnosis:50];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
   return YES;
}

- (void) dealloc {
    [happinessViewController release];
    [super dealloc];
}

- (void)viewDidLoad {
    self.title = @"Psychologist";
}
@end
