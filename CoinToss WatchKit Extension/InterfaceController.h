//
//  InterfaceController.h
//  CoinToss WatchKit Extension
//
//  Created by Chaudhary Talha on 1/27/15.
//  Copyright (c) 2015 MindGem Studios. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
{
    NSUserDefaults *noOfGame;
    
    int totalToss;
}
- (IBAction)tossPressed;

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *resultLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceImage *resultImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *totalTossNumber;


@end
