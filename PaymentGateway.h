

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;
-(NSString*)name; //if you don't list this explicitly then this class can't ask for the delegate's name!

@end


@interface PaymentGateway : NSObject

@property (weak, nonatomic) id<PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;

@end
