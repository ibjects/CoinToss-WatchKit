//
//  InterfaceController.m
//  CoinToss WatchKit Extension
//
//  Created by Chaudhary Talha on 1/27/15.
//  Copyright (c) 2015 MindGem Studios. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    totalToss = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"totalT"];
    
    [[NSUserDefaults standardUserDefaults] setInteger:totalToss forKey:@"totalT"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    //totalToss=0;
    // Configure interface objects here.
}

-(void)loadUserData
{
    //call this function in awakeWithContent if you want to save the value
    [[NSUserDefaults standardUserDefaults] setInteger:totalToss forKey:@"totalT"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)tossPressed {
    int number = arc4random_uniform(2);
  //  NSLog(@"number is %d",number);
    
    if (number==0) {
        totalToss++;
        self.totalTossNumber.text = [NSString stringWithFormat:@"Total Toss: %d",totalToss];
        self.resultLabel.text = [NSString stringWithFormat:@"HEADS"];
        [self.resultImage setImageNamed:@"heads.png"];
    }
    else
    {
        totalToss++;
        self.totalTossNumber.text = [NSString stringWithFormat:@"Total Toss: %d",totalToss];
        self.resultLabel.text = [NSString stringWithFormat:@"TAILS"];
        [self.resultImage setImageNamed:@"tails.png"];
    }
}
@end



