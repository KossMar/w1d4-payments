

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"


@interface ApplePaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSString* name;

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end
