//
//  HTViewController.m
//  UIWebView_html_test
//
//  Created by Derrick Ho on 10/28/13.
//  Copyright (c) 2013 Derrick Ho. All rights reserved.
//

#import "HTViewController.h"

@interface HTViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	NSString *myHTML = [NSString stringWithContentsOfURL:
						[NSURL URLWithString:@"https://raw.github.com/wh1pch81n/uiwebview_html_test/master/html_test.html"]
												encoding:NSUTF8StringEncoding
												   error:nil];

	[[self webView] loadHTMLString:myHTML baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
