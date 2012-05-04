//
//  DataViewController.h
//  TETE
//
//  Created by kiwitech on 05/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController{
    NSString *sName;
    NSString *sBasePath;
}
@property (retain, nonatomic) NSString *sName;
@property (retain, nonatomic) NSString *sBasePath;

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) IBOutlet UIWebView *m_webView;
@property (strong, nonatomic) id dataObject;
@end
