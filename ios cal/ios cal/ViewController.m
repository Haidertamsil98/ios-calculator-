//
//  ViewController.m
//  ios cal
//
//  Created by E Apple Store on 18/06/2019.
//  Copyright © 2019 E Apple Store. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController






- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    isDeci = false;
    rN = 0;
}

-(void) setResultWithNumber:(int)theNumber{
    if(!isDeci){
        dN *= 10;
        dN += theNumber;
        
        label.text = [NSString stringWithFormat:@"%.0f",dN];
    }
    
//    else{
//
//        label.text = [label.text stringByAppendingString: @"%@", [NSString stringWithFormat:@"%d",theNumber]];
//
//    }
    dN = [label.text floatValue];
}

-(void) opWithNumber:(int)theNumber{
    isDeci = false;
    if(rN == 0){
        rN = dN;
    }
    else{
        label.text = [NSString stringWithFormat:@"%.2f",rN];
        
        switch(op){
            case 1:
                rN += dN;
                break;
            case 2:
                rN -= dN;
                break;
            case 3:
                rN *= dN;
                break;
            case 4:
                rN /= dN;
                break;
                
            default:
                break;
        }
    }
    
    op = theNumber;
    dN = 0;
}


- (IBAction)percent:(id)sender{
    dN = dN / 100;
    if(isDeci){
        label.text = [NSString stringWithFormat:@"%.2f",dN];
    }
    else{
        label.text = [NSString stringWithFormat:@"%.2f",dN];
    }
    
    
}

- (IBAction)clear:(id)sender {
    op = 0;
    rN = 0;
    dN = 0;
    isDeci = false;
    label.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)plusMinus:(id)sender {
    dN = 0 - dN;
    if(isDeci){
        label.text = [NSString stringWithFormat:@"%.2f",dN];
    }
    else{
        label.text = [NSString stringWithFormat:@"%.0f",dN];
    }
}






-(IBAction)zero:(id)sender{
    [self setlabelWithNumber:0];
}
-(IBAction)one:(id)sender{
    [self setlabelWithNumber:1];
}
-(IBAction)two:(id)sender{
    [self setlabelWithNumber:2];
}
-(IBAction)three:(id)sender{
    [self setlabelWithNumber:3];
}
-(IBAction)four:(id)sender{
    [self setlabelWithNumber:4];
}
-(IBAction)five:(id)sender{
    [self setlabelWithNumber:5];
}
-(IBAction)six:(id)sender{
    [self setlabelWithNumber:6];
}
-(IBAction)seven:(id)sender{
    [self setlabelWithNumber:7];
}
-(IBAction)eight:(id)sender{
    [self setlabelWithNumber:8];
}
-(IBAction)nine:(id)sender{
    [self setlabelWithNumber:9];
}


-(IBAction)divide:(id)sender{
    if(rN!= 0){
        [self opWithNumber:op];
        
        label.text = [NSString stringWithFormat:@"%.2f",rN];
        dN = [label.text floatValue];
        rN = 0;
    }
    [self opWithNumber:4];
}

-(IBAction)multiply:(id)sender{
    if(rN!= 0){
        [self opWithNumber:op];
        label.text = [NSString stringWithFormat:@"%.2f",rN];
        dN = [label.text floatValue];
        rN = 0;
    }
    [self opWithNumber:3];
}

-(IBAction)subtract:(id)sender{
    if(rN!= 0){
        [self opWithNumber:op];
        label.text = [NSString stringWithFormat:@"%.2f",rN];
        dN = [label.text floatValue];
        rN = 0;
    }
    [self opWithNumber:2];
}

-(IBAction)add:(id)sender{
    if(rN!= 0){
        [self opWithNumber:op];
        label.text = [NSString stringWithFormat:@"%.2f",rN];
        dN = [label.text floatValue];
        rN = 0;
    }
    [self opWithNumber:1];
}

-(IBAction)dot:(id)sender{
    isDeci = true;
    NSRange range = [label.text rangeOfString:@"."];
    
    if(range.location == NSNotFound){
        label.text = [label.text stringByAppendingString:@"."];
        
    }
}


-(IBAction)equal:(id)sender{
    [self opWithNumber:op];
    label.text = [NSString stringWithFormat:@"%.2f",rN];
    dN = [label.text floatValue];
    rN =  0;
}


@end
