//
//  FirstViewController.m
//  MedoDelirio3GS
//
//  Created by Rafael Schmitt on 12/31/24.
//  Copyright (c) 2024 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"
#import "MD3APIClient.h"

@implementation FirstViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[MD3APIClient sharedClient] getSounds:^(NSArray *data, NSError *error) {
        if (error) {
            NSLog(@"Error fetching data: %@", error);
            return;
        }
        
        NSLog(@"Fetched data: %@", data);
    }];
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
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
