//
//  ViewController.m
//  Bouncing
//
//  Created by excel on 10/19/17.
//  Copyright © 2017 excelcodes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ball.layer.cornerRadius = 25;
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    //[self.view setClipsToBounds:YES];
    
    UIGravityBehavior *beh = [[UIGravityBehavior alloc]initWithItems:@[_ball]];
    UICollisionBehavior *col = [[UICollisionBehavior alloc] initWithItems:@[_ball]];
    UIDynamicItemBehavior *itemB = [[UIDynamicItemBehavior alloc]initWithItems:@[_ball]];
    itemB.elasticity = 0.5;
    col.translatesReferenceBoundsIntoBoundary=YES;
    [_animator addBehavior:beh];
    [_animator addBehavior:col];
    [_animator addBehavior:itemB];
    [col setCollisionDelegate:self];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier {
    _ball.backgroundColor = [UIColor blueColor];

}

- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    _ball.backgroundColor = [UIColor redColor];

}

@end
