

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount {
    [self.paymentDelegate processPaymentAmount:amount];
    BOOL processPayGate = [self.paymentDelegate canProcessPayment];
    if (processPayGate == YES) {
        //ask if the delegate has a name property. DON'T FORGET: explicitly list the name property getter in the protocol
        if ([self.paymentDelegate respondsToSelector:@selector(name)]){
            NSLog(@"%@ processed ammount $%li", [self.paymentDelegate name], (long)amount);
        }
        
    }
    else NSLog(@"Payment CAN NOT be processed");
}


@end
