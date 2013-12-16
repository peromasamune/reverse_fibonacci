//
//  FirstViewController.h
//  Fibonaccitab
//
//  Created by Tak on 10/07/02.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	
	IBOutlet UILabel *Anser;
	IBOutlet UITextField *Fibonacci1;
	IBOutlet UITextField *Fibonacci2;
	IBOutlet UITextField *FibonacciN;
	
}

-(IBAction)calc;
-(IBAction)done;

@end
