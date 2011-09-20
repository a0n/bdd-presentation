//
//  bddtest5ViewController.m
//  bddtest5
//
//  Created by Roman Lehnert on 12.09.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "bddtest5ViewController.h"

@implementation bddtest5ViewController

@synthesize datatable;
@synthesize items;




#pragma mark - table view implementations
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    cell.textLabel.text = [items objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [items count]; 
}


- (IBAction) addItem {
    [items addObject:[NSString stringWithFormat: @"Hinzugefügt:  %i", [items count] + 1]];
    NSLog(@"Item hinzugefügt");
    [self.datatable beginUpdates];
    [self.datatable insertRowsAtIndexPaths:[NSArray arrayWithObject:[NSIndexPath indexPathForRow: [items count]-1 inSection:0]] withRowAnimation:UITableViewRowAnimationFade];
    [self.datatable endUpdates];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *_items = [[NSMutableArray alloc] init];
    
    [_items addObject:@"Rofl, er hat lol gesagt" ];
    [_items addObject:@"Rofl, er hat lol gesagt" ];
    [_items addObject:@"Rofl, er hat lol gesagt" ];
    
    self.items = _items;
    
    [_items release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.datatable = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc
{
    [datatable release];
    [items release];
    [super dealloc];
}

@end
