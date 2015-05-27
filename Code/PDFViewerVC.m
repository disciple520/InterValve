//
//  PDFViewerVC.m
//  InterValve
//
//  Created by Aaron Hintgen on 10/23/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import "PDFViewerVC.h"
#import "DisclaimerView.h"

@interface PDFViewerVC ()

@end

@implementation PDFViewerVC

-(IBAction)mailBrochure {
    NSString *filePath;
    NSString *pdfName;
    if (_whichPDF == 1) {
        filePath = [[NSBundle mainBundle] pathForResource:@"InterValve-Brochure-EU" ofType: @"pdf"];
        pdfName = @"InterValve-Brochure-EU.pdf";
        
    }
    else if (_whichPDF == 2) {
        filePath = [[NSBundle mainBundle] pathForResource:@"InterValve-Brochure-US" ofType: @"pdf"];
        pdfName = @"InterValve-Brochure-US.pdf";
        
    }
    
    
    MFMailComposeViewController *controller = [[MFMailComposeViewController alloc] init];
    controller.mailComposeDelegate = self;
    [controller setSubject:@"The InterValve Information You Requested"];
    [controller setMessageBody:@"A PDF is attached." isHTML:NO];
    [controller addAttachmentData:[NSData dataWithContentsOfFile:filePath] mimeType:@"application/pdf" fileName:pdfName];
    if (controller != nil) {
        [self presentViewController:controller animated:YES completion:nil];
        
    }
    
}

- (void)mailComposeController:(MFMailComposeViewController*)mailController didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self becomeFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)showDisclaimer:(id)sender {
    DisclaimerView *dv = [[DisclaimerView alloc] initWithFrame:CGRectMake(200, 50, 624, 550)];
    [dv setHTML:[sender tag]];
    [self.view addSubview:dv];
}

- (IBAction)backBtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setUpPDF:(int)pdfNumber {
    _whichPDF = pdfNumber;
    
    NSString *filePath;
    if (_whichPDF == 1) {
        filePath = [[NSBundle mainBundle] pathForResource:@"InterValve-Brochure-EU" ofType: @"pdf"];
//        NSLog(@"pdfPath: %@",filePath);
    }
    else if (_whichPDF == 2) {
        filePath = [[NSBundle mainBundle] pathForResource:@"InterValve-Brochure-US" ofType: @"pdf"];
        
    }

    NSURL *pdfUrl = [NSURL URLWithString:filePath];
    
    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(20, 120, 980, 540)];
    [web setDelegate:self];
    
    [web loadRequest:[NSURLRequest requestWithURL:pdfUrl]];
    [self.view addSubview:web];
    
}

//webview delegate methods
- (void)webViewDidStartLoad:(UIWebView *)webView {
    
  
    
}


- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    

}


- (void)webViewDidFinishLoad:(UIWebView *)webView {
    

    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
//            [_web setDelegate:self];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
