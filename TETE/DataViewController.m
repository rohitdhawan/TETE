//
//  DataViewController.m
//  TETE
//
//  Created by kiwitech on 05/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DataViewController.h"

@implementation DataViewController

@synthesize dataLabel = _dataLabel;
@synthesize dataObject = _dataObject;
@synthesize m_webView,sName,sBasePath;


- (void)dealloc
{
    [m_webView release];
    [_dataLabel release];
    [_dataObject release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    
//    NSString *sHtmlContent = [NSString 
//                              stringWithContentsOfFile:[NSString stringWithFormat:@"%@/%@",sBasePath,sName] 
//                              encoding:NSUTF8StringEncoding error:nil];
//    
//    [m_webView loadHTMLString:sHtmlContent baseURL:[NSURL fileURLWithPath:sBasePath]];

    NSString *urlAddress=[[NSBundle mainBundle] pathForResource:@"01" ofType:@"html"];
    NSURL *myUrl=[NSURL fileURLWithPath:urlAddress];
    NSURLRequest *urlRequest=[NSURLRequest requestWithURL:myUrl];
    [m_webView loadRequest:urlRequest];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
