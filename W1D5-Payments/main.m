//
//  main.m
//  W1D5-Payments
//
//  Created by Mar Koss on 2017-10-06.
//  Copyright © 2017 Mar Koss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

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
        
        [payGate1 processPaymentAmount:payInputInt];
        
        
        
        
    }
    return 0;
}
