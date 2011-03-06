//
//  FaceView.h
//  Happiness
//
//  Created by james sa on 2011/2/27.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FaceView;

@protocol FaceViewDelegate

- (float)smileForFaceView:(FaceView *)requestor;

@end

@interface FaceView : UIView {
	id <FaceViewDelegate> delegate;
}

@property (assign) id <FaceViewDelegate> delegate;

@end
