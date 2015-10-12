//
//  Motion.h
//  
//
//  Created by roberto arciniegas on 10/12/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

@protocol MotionDelegate <NSObject>

- (void) motionSentMessage:(NSString *)msg;
- (void) motionSentX: (double) x andY: (double) y andZ: (double) z;

@end

@interface Motion : NSObject

@property (nonatomic, weak) id <MotionDelegate> delegate;
@property (nonatomic, strong) CMMotionManager *_manager;

//for a single pull
- (void) pullAccelerationWithX:(double *)x
                          andY:(double *)y
                          andZ:(double *)z;

//for continous updates
- (void) startPushingAccelerationUpdatesWithX:(double *)x
                                         andY:(double *)y
                                         andZ:(double *)z;
- (void) stopPushingAccelerationUpdates;

@end
