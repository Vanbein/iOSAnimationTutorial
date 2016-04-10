//
//  CABasicAnimationDemo.m
//  iOSAnimationTutorial
//
//  Created by 臧其龙 on 16/4/10.
//  Copyright © 2016年 臧其龙. All rights reserved.
//

#import "CABasicAnimationDemo.h"

#define DEGREES_TO_RADIANS(degrees)((M_PI * degrees)/180)

NSString * const kXAxisTransform = @"transform.rotation.x";
NSString * const kYAxisTransform = @"transform.rotation.y";
NSString * const kZAxisTransform = @"transform.rotation.z";

static CGFloat const kAnimationDuration = 1;

@implementation CABasicAnimationDemo

+ (CABasicAnimation *)animationWithKeyPath:(NSString *)keyPath
                                  duration:(CFTimeInterval)duration
                                 fromValue:(id)from
                                   toValue:(id)to{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:keyPath];
    animation.duration = duration;
    animation.fromValue = from;
    animation.toValue = to;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    return animation;
}

+ (CABasicAnimation *)shadowOffsetAnimation:(BOOL)open {
    NSValue *fromValue = [NSValue valueWithCGSize:CGSizeMake(0, 0)];
    NSValue *toValue = [NSValue valueWithCGSize:CGSizeMake(5, 5)];
    if (open) {
      return [CABasicAnimationDemo animationWithKeyPath:@"shadowOffset" duration:kAnimationDuration fromValue:fromValue toValue:toValue];
    }else{
        return [CABasicAnimationDemo animationWithKeyPath:@"shadowOffset" duration:kAnimationDuration fromValue:toValue toValue:fromValue];
    }
    
}

+ (CABasicAnimation *)shadowColorAnimation:(BOOL)open {
    id fromColor = (id)[UIColor blackColor].CGColor;
    id toColor = (id)[UIColor redColor].CGColor;
    if (open) {
        return [CABasicAnimationDemo animationWithKeyPath:@"shadowColor" duration:kAnimationDuration fromValue:fromColor toValue:toColor];
    }else{
        return [CABasicAnimationDemo animationWithKeyPath:@"shadowColor" duration:kAnimationDuration fromValue:toColor toValue:fromColor];
    }
    
}

+ (CABasicAnimation *)transformAxisAnimationforLayer:(CALayer *)layer
                                            withAxis:(NSString *)axis
                                            WithDegrees:(CGFloat)degrees
                                      withAnchorPoint:(CGPoint)anchorPoint
                                      withPerspective:(BOOL)isPerspective
{
    if (isPerspective) {
        CATransform3D transform = CATransform3DIdentity;
        transform.m34 = -1.0/500;
        layer.transform = transform;
    }else{
        layer.transform = CATransform3DIdentity;
    }
    
    layer.anchorPoint = anchorPoint;
    CABasicAnimation *animation = [CABasicAnimationDemo animationWithKeyPath:axis duration:kAnimationDuration fromValue:0 toValue:@(DEGREES_TO_RADIANS(degrees))];
    animation.removedOnCompletion = YES;
    animation.autoreverses = NO;
    return animation;
}

@end
