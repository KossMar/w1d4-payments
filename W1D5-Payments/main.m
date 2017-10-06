

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        int priceInput = arc4random_uniform(1000) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%i Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", priceInput);
        
        //User select payment method
        
        char payInput[100];
        fgets (payInput, 100, stdin);
        
        
        int payInputInt = (payInput[0] - '0');
        NSLog(@"you picked: %i",payInputInt);

        PaymentGateway *payGate1 = [PaymentGateway new];

        
        AmazonPaymentService *amazonPay = [AmazonPaymentService new];
        PaypalPaymentService *paypalPay = [PaypalPaymentService new];
        StripePaymentService *stripePay = [StripePaymentService new];

        
        
        //user input selects payment type
        
        switch (payInputInt) {
            case 1:
                payGate1.paymentDelegate = amazonPay;
                break;
            case 2:
                payGate1.paymentDelegate = paypalPay;
                break;
            case 3:
                payGate1.paymentDelegate = stripePay;
                break;
                
            default:
                payGate1 = NULL;
                break;
        }
        
                [payGate1 processPaymentAmount:payInputInt];
        
        
        
    }
    return 0;
}
