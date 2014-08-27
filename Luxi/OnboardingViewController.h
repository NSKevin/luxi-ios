//
//  OnboardingViewController.h
//  Luxi
//
//  Created by Alina on 2014-07-01.
//  Copyright (c) 2014 Owen Davis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol OnboardingViewDelegate <NSObject>
- (void)dismissOnboarding;
@end



@interface OnboardingViewController : UIViewController

@property (weak, nonatomic) id<OnboardingViewDelegate> onboardingViewDelegate;
@property BOOL luxiView;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
