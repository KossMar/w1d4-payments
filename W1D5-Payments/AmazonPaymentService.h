

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface AmazonPaymentService : NSObject <PaymentDelegate>

@property (nonatomic) NSString* name;

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;



@end
