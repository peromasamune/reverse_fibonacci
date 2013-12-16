//
//  FirstViewController.m
//  Fibonaccitab
//
//  Created by Tak on 10/07/02.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction)calc
{
	int value;
	int f1 = [[Fibonacci1 text] intValue];
	int f2 = [[Fibonacci2 text] intValue];
	int n = [[FibonacciN text] intValue];
	
	if (f1,f2 <= 0) {
		NSLog(@"エラー");
		Anser.text = [NSString stringWithFormat:@"注意：f1,f2の値は正の数です"];
		return;
	}
	
	for (int i = 1; i <= n; i++) {
		value = f1 + f2;
		f1 = f2;
		f2 = value;
		NSLog(@"%d 番目の数字は %d です",i+2,value);
	}
	Anser.text = [NSString stringWithFormat:@" Ans. = %d",value];
	return;
}

- (IBAction)done;
{
	[Fibonacci1 endEditing:YES];
	[Fibonacci2 endEditing:YES];
	[FibonacciN endEditing:YES];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
