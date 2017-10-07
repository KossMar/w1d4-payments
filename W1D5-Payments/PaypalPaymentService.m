

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(instancetype) init {
    self = [super init];
    if (self) {
        _name = @"Paypal";
    }
    return self;
}

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Paypal");
  
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
