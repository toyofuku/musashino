//
//  FirstViewController.m
//  musashino
//
//  Created by 豊福 剛 on 12/03/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize webView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"first" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
/*
    CGRect bounds = [[UIScreen mainScreen] applicationFrame];
    CGRect viewRect = CGRectMake(0.0, 0.0, bounds.size.width, bounds.size.height);
	webView = [[UIWebView alloc] initWithFrame: viewRect];
    webView.scalesPageToFit = YES;
	webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.delegate = self;
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [webView release];
    [super dealloc];
}
@end
