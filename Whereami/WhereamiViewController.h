//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Sol on 7/4/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController
{
    CLLocationManager *locationManager;
    UILabel *lblLocation;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}
@end
