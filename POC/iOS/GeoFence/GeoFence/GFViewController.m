//
//  GFViewController.m
//  GeoFence
//
//  Created by Raj Gumdal on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "GFViewController.h"
#import "MapViewController.h"

@implementation GFViewController
@synthesize theMapViewController = theMapViewController_;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (void)dealloc
{
    [self setTheMapViewController:nil];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
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
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    MapViewController *aMapVC = [[MapViewController alloc] initWithNibName:@"MapViewController"
                                                                    bundle:nil];
    [self setTheMapViewController:aMapVC];
    [aMapVC release];
    [[self theMapViewController] presentModalViewController:aMapVC
                                                   animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
    [[self theMapViewController] dismissModalViewControllerAnimated:YES];
    [self setTheMapViewController:nil];
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
