
#import "StripePaymentService.h"

@implementation StripePaymentService 

-(instancetype) init {
        self = [super init];
        if (self) {
            _name = @"Stripe";
        }
        return self;
    }


-(void)processPaymentAmount:(NSInteger)amount{
    
        NSLog(@"Stripe");
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
