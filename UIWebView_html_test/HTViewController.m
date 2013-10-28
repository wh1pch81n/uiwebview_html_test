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
						[NSURL URLWithString:@"https://raw.github.com/wh1pch81n/headfirst_html/master/ch1_p28_headFirstLounge.html"]
												encoding:NSUTF8StringEncoding
												   error:nil];
											
						
						//myHTML = @"<!doctype html><html><head><title>this is a title</title><meta charset=\"utf-8\">	</head>	<body>	<p>this is a paragraph</p>	</body>	</html>";
	[[self webView] loadHTMLString:myHTML baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
