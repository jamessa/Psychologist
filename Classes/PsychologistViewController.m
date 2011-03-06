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

- (void)showDiagnosis:(int)diagnosis {
	HappinessViewController *hvc = [[HappinessViewController alloc] init];
	hvc.happiness = diagnosis;
	[self.navigationController pushViewController:hvc animated:YES];
	[hvc release];
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

@end
