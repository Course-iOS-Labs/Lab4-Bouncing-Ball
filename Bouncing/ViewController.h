//
//  ViewController.h
//  Bouncing
//
//  Created by excel on 10/19/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property (weak, nonatomic) IBOutlet UIView *ball;

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

