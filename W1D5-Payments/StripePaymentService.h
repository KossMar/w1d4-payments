

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSString* name;

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;



@end
