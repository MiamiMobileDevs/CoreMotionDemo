//
//  Motion.m
//  
//
//  Created by roberto arciniegas on 10/12/15.
//
//

#import "Motion.h"

@implementation Motion

@synthesize delegate, _manager;

#pragma mark - get a single update:
- (void) pullAccelerationWithX:(double *)x
                          andY:(double *)y
                          andZ:(double *)z
{
    self._manager = [[CMMotionManager alloc] init];
    if (self._manager.accelerometerAvailable){
        *x = self._manager.accelerometerData.acceleration.x;
        *y = self._manager.accelerometerData.acceleration.y;
        *z = self._manager.accelerometerData.acceleration.z;
        [self._manager stopAccelerometerUpdates];
    } else {
        [self.delegate motionSentMessage:@"No Accelerometer Available"];
    }
}

#pragma mark - get continous updates:
- (void) startPushingAccelerationUpdatesWithX:(double *)x
                                         andY:(double *)y
                                         andZ:(double *)z
{
    
}

@end
