//
//  bddtest5ViewController.h
//  bddtest5
//
//  Created by Roman Lehnert on 12.09.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bddtest5ViewController : UIViewController < UITableViewDataSource, UITableViewDelegate > {

IBOutlet UITableView *datatable;    
    
    NSMutableArray *items;
}


- (IBAction)addItem;


@property (nonatomic, retain) UITableView *datatable;
@property (nonatomic, retain) NSMutableArray *items;

@end
