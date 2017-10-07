
#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(instancetype) init {
    self = [super init];
    if (self) {
        _name = @"Apple";
    }
    return self;
}

-(void)processPaymentAmount:(NSInteger)amount{
    
    NSLog(@"Apple");
    
}

-(BOOL)canProcessPayment {
    BOOL process = NO;
    int randomInt = arc4random_uniform(2);
    NSLog(@"%i", randomInt);
    if (randomInt == 1) {
        process = YES;
    }
    return process;
}

@end
