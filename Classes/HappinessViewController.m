//
//  HappinessViewController.m
//  Happiness
//
//  Created by james sa on 2011/2/27.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HappinessViewController.h"

@implementation HappinessViewController

@synthesize faceView, slider;
@synthesize happiness;

-(void)updateUI
{
	self.slider.value = self.happiness;
	[self.faceView setNeedsDisplay];
}

-(void)setHappiness:(int)newHappiness
{
	if (newHappiness < 0) newHappiness = 0;
	if (newHappiness > 100) newHappiness = 100;
	happiness = newHappiness;
	[self updateUI];
}

-(IBAction)happinessChanged:(UISlider *)sender
{
	self.happiness = sender.value;
}

-(float)smileForFaceView:(FaceView *)requestor
{
	float smile = 0;
	if (requestor == self.faceView) {
		smile = (((float)self.happiness - 50) / 50);
	}
	return smile;
}

-(void)viewDidLoad 
{
	[super viewDidLoad];
	self.faceView.delegate = self;
	[self updateUI];
}

-(void)releaseOutlets
{
	self.faceView = nil;
	self.slider = nil;
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	[self releaseOutlets];
}


- (void)dealloc {
	[self releaseOutlets];
    [super dealloc];
}

@end
