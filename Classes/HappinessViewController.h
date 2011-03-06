//
//  HappinessViewController.h
//  Happiness
//
//  Created by james sa on 2011/2/27.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FaceView.h"

@interface HappinessViewController : UIViewController <FaceViewDelegate> {
	int happiness; // 0 .. 100
	UISlider *slider;
	FaceView *faceView;
}

@property int happiness;

@property (retain) IBOutlet UISlider *slider;
@property (retain) IBOutlet FaceView *faceView;

- (IBAction)happinessChanged:(UISlider *)sender;

@end

