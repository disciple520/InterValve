//
//  PDFViewerVC.h
//  InterValve
//
//  Created by Aaron Hintgen on 10/23/13.
//  Copyright (c) 2013 Spare. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface PDFViewerVC : UIViewController <MFMailComposeViewControllerDelegate,UIWebViewDelegate>

//@property IBOutlet UIWebView *web;
@property int whichPDF;

-(void)setUpPDF:(int)pdfNumber;

@end
