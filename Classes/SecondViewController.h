//
//  SecondViewController.h
//  Fibonaccitab
//
//  Created by Tak on 10/07/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController {
	
	IBOutlet UITextField *FibonacciN;
	IBOutlet UITextField *FibonacciN2;
	IBOutlet UITextField *FibonacciM;
	IBOutlet UILabel *FibonacciAns;
	IBOutlet UILabel *FibonacciAns2;
	IBOutlet UILabel *FibonacciAns3;

}

-(IBAction)CalcEvent;
-(IBAction)CalcEvent2;
-(IBAction)CloseKeyBoard;

@end
