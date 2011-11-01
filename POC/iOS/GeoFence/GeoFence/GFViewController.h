//
//  GFViewController.h
//  GeoFence
//
//  Created by Raj Gumdal on 14/10/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MapViewController;

@interface GFViewController : UIViewController
{
    MapViewController *theMapViewController_;
}
@property (nonatomic, retain) MapViewController *theMapViewController;

@end
