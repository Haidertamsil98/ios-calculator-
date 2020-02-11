//
//  ViewController.h
//  ios cal
//
//  Created by E Apple Store on 18/06/2019.
//  Copyright © 2019 E Apple Store. All rights reserved.
//

#import <UIKit/UIKit.h>

int op;
double dN;
double rN;
bool isDeci;

@interface ViewController : UIViewController{




    __weak IBOutlet UILabel *label;
    

    
};



-(void)setResultWithNumber:(int)theNumber;

- (IBAction)clear:(id)sender;
- (IBAction)plusMinus:(id)sender;
- (IBAction)percent:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)subtract:(id)sender;
- (IBAction)add:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)equal:(id)sender;
- (IBAction)zero:(id)sender;

@end


