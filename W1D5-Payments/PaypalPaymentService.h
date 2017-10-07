

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSString* name;

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;


@end
