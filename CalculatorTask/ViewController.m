//
//  ViewController.m
//  CalculatorTask
//
//  Created by Egor Yanukovich on 26.01.17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (assign, nonatomic) NSInteger number;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)operationAction:(UIButton *)sender {
    
    self.typingNumber = NO;
    
    self.fitstNumber = [self.resultLabel.text intValue];

    self.operation =  [sender currentTitle];
    
    if (sender.tag == 17) {
        self.fitstNumber = 0;
        self.resultLabel.text = [NSString stringWithFormat:@"0"];
    }
    
}
/*
- (IBAction)operationAction:(UIButton *)sender {
    
    switch (sender.tag) {
        case 10:
            self.resultLabel.text = [NSString stringWithFormat:@"="];
            break;
        case 11:
            self.resultLabel.text = [NSString stringWithFormat:@"+"];
            break;
        case 12:
            self.resultLabel.text = [NSString stringWithFormat:@"-"];
            break;
        case 13:
            self.resultLabel.text = [NSString stringWithFormat:@"*"];
            break;
        case 14:
            self.resultLabel.text = [NSString stringWithFormat:@"/"];
            break;
        case 15:
            self.resultLabel.text = [NSString stringWithFormat:@"%@", @"%"];
            break;
        case 16:
            self.resultLabel.text = [NSString stringWithFormat:@"+ or -"];
            break;
        case 17:
            self.number = 0;
            self.resultLabel.text = [NSString stringWithFormat:@"0"]; // AC
            break;
        default:
            break;
    }
}
 */

- (IBAction)numberAction:(UIButton *)sender {
    //self.number = self.number * 10;
    //self.number += sender.tag;
    //self.resultLabel.text = [NSString stringWithFormat:@"%ld", (long)self.number ];
    
    NSString* number = sender.currentTitle;
    if (self.typingNumber) {
        self.resultLabel.text = [self.resultLabel.text stringByAppendingString:number];
        
    }
    else{
        self.resultLabel.text = number;
        self.typingNumber = YES;
    }
    
}

- (IBAction)EqualAction:(UIButton *)sender {
    self.typingNumber = NO;
    self.secondNumber = [self.resultLabel.text intValue];
    
    NSInteger result = 0;
    
    if ([self.operation isEqualToString:@"+"]) {
       result =  self.fitstNumber + self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"-"]){
        result = self.fitstNumber - self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"*"]){
        result = self.fitstNumber * self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"/"]){
        result = self.fitstNumber / self.secondNumber;
    }
    else if ([self.operation isEqualToString:@"%"]){
        result = (self.fitstNumber) / 100; // будет работать только если кратно 100
    }
    /*else if ([self.operation isEqualToString:@"AC"]){
        result = 0;
        self.resultLabel.text = [NSString stringWithFormat:@"%ld", (long)result]; // нужно выносить в отдельный Action чтобы по нажатию срабатывал. А так - работает, если сначала нажать число, потом АС, потом =, т.к. это всё описано в Action
    }*/
    self.resultLabel.text = [NSString stringWithFormat:@"%ld", result];
 
    /*
    switch (sender.tag) {
        case 11:
            result = self.fitstNumber + self.secondNumber;
            
            break;
        case 12:
            result = self.fitstNumber - self.secondNumber;
           
            break;
        case 13:
            result = self.fitstNumber * self.secondNumber;

            break;
        case 14:
            result = self.fitstNumber / self.secondNumber;
            
            break;
        case 15:
            result = self.fitstNumber / 100;
            
            break;
        case 16:
            result = self.fitstNumber + self.secondNumber;
            if ([self.resultLabel.text isEqualToString:@"0"]) {
                return;
            }else{
                NSString * negative = @"-";
                BOOL changingSign;
                if(!changingSign){
                    changingSign = YES;
                    self.resultLabel.text = [negative stringByAppendingString:self.resultLabel.text];
                }else{
                    changingSign = NO;
                   self.resultLabel.text = [self.resultLabel.text substringFromIndex:1];
                }
            }
            break;
        default:
            break;
    }
    */
}

@end
