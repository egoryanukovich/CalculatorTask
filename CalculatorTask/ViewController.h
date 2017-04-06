//
//  ViewController.h
//  CalculatorTask
//
//  Created by Egor Yanukovich on 26.01.17.
//  Copyright © 2017 Egor Yanukovich. All rights reserved.
//

#import <UIKit/UIKit.h>
/*
typedef enum{
    
    CalculationOperationSum = 11,
    CalculationOperationDIfference = 12,
    CalculationOperationMultiply = 13,
    CalculationOperationDivision = 14,
    CalculationOperationPercentage = 15,
    CalculationOperationPlusMinus = 16
    
}CalculationOperation;
*/
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
//@property (assign, nonatomic) CalculationOperation operation;

@property(assign, nonatomic) BOOL typingNumber;
@property(assign, nonatomic) NSInteger fitstNumber;
@property(assign, nonatomic) NSInteger secondNumber;
@property (strong,nonatomic) NSString* operation;


- (IBAction)operationAction:(UIButton *)sender;// + - % * / ...
- (IBAction)numberAction:(UIButton *)sender;// 1234567890
- (IBAction)EqualAction:(UIButton *)sender;// =





@end

