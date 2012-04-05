//
//  ThirdViewController.m
//  musashino
//
//  Created by 豊福 剛 on 12/03/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
@synthesize webView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"third" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    /*
     CGRect bounds = [[UIScreen mainScreen] applicationFrame];
     CGRect viewRect = CGRectMake(0.0, 0.0, bounds.size.width, bounds.size.height);
     weblView = [[UIWebView alloc] initWithFrame: viewRect];
     weblView.scalesPageToFit = YES;
     weblView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
     weblView.delegate = self;
     */    
    [webView loadRequest:request];

}

- (void)viewDidUnload
{
    [self setWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [webView release];
    [super dealloc];
}
@end
