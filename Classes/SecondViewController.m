    //
//  SecondViewController.m
//  Fibonaccitab
//
//  Created by Tak on 10/07/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController


 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
	
	
	
    return self;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)CalcEvent
{
	int fn = [[FibonacciN text] intValue];
	float golden = (1.0f+sqrt(5.0f))/2.0f;
	float division = fn / golden + 0.5f;
	int fAns;
	
	NSLog(@"0 番目の数字は %d です",fn);
	
	division = fn / golden + 0.5f;
	fAns = division;
	NSLog(@"1 番目の数字は %d です",fAns);
	
	FibonacciAns.text = [NSString stringWithFormat:@" Ans. = %d",fAns];
	FibonacciM.text = [NSString stringWithFormat:@"%d",fAns];
	return;
}
- (IBAction)CalcEvent2
{
	int fn = [[FibonacciN text] intValue];
	int fm = [[FibonacciM text] intValue];
	int n = [[FibonacciN2 text] intValue];
	int value;
	
	for (int i = 2; i <= n; i++) {
		value = fn - fm;
		if (fm - value <= 0) break;
		fn = fm;
		fm = value;
		NSLog(@"%d 番目の数字は %d です",i,value);
	}
	FibonacciAns2.text = [NSString stringWithFormat:@" Ans. = %d",fm];
	FibonacciAns3.text = [NSString stringWithFormat:@" Ans. = %d",fn];
}

- (IBAction)CloseKeyBoard
{
	[FibonacciN endEditing:YES];
	[FibonacciN2 endEditing:YES];
	[FibonacciM endEditing:YES];
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
