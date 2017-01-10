//
//  main.m
//  Word effects
//
//  Created by Alex Bearinger on 2017-01-09.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // 255 unit long array of characters
        char inputChars[255];

        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);

        // print as a c string
        printf("Your string is %s\n", inputChars);

        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];

        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        // make string uppercase
        NSString *uppercase = inputString.uppercaseString;
        
        // print uppercase NSString object
        NSLog(@"Uppercase is: %@", uppercase);
        
        // make string lowercase
        NSString *lowercase = inputString.lowercaseString;
        
        // print lowercase NSString object
        NSLog(@"Lowercase is: %@", lowercase);
        
        // convert string to number
        float number = [inputString floatValue];
        if (number != 0){
            // print converted number
            NSLog(@"Converted number is: %f", number);
        }
        
        // Canadianize (append "eh?")
        
        NSString *canadianized = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        canadianized = [canadianized stringByAppendingString:@", eh?"];
        
        // print canadianized string
        NSLog(@"Canadianized string is: %@", canadianized);
        
        // Respond to question
        NSString *response = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        if ([response hasSuffix:@"?"])
            NSLog(@"I don't know");
        if ([response hasSuffix:@"!"])
            NSLog(@"Whoa, calm down!");
        
        // De-Space-It
        NSString *deSpaced = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"De-Spaced is: %@", deSpaced);
        
        
        

    }
    return 0;
}
