

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)someMethod;

@end


@interface PaymentGateway : NSObject

@property (weak, nonatomic) id<PaymentDelegate> paymentDelegate;

-(void)processPaymentAmount:(NSInteger)amount;

@end
