//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Sol on 7/4/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

-(id)initWithNibName: (NSString *) nibNameOrNil bundle:(NSBundle *) nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if(self)
    {
        //create location manauger object
        locationManager = [[CLLocationManager alloc] init];
        lblLocation = [[UILabel alloc] initWithFrame:CGRectMake(10,10,300,300)];
        [lblLocation setNumberOfLines:0];
        //[lblLocation setText: @"text"];
        
        [[self view] addSubview: lblLocation];
        [locationManager setDelegate:self];
        
        //and we want it to be as accurate as possible regardless of how much time/power it takes
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        //Tell our manager to start looking for its location immediately
        [locationManager startUpdatingLocation];
    }
    return self;
}

-(void) locationManager: (CLLocationManager *)manager didUpdateToLocation:(CLLocation *) newLocation fromLocation:(CLLocation *) oldLoction
{
    NSLog(@"%@", newLocation);
    [lblLocation setText: [[NSString alloc] initWithFormat: @"%@", newLocation]];
}

-(void)locationManager: (CLLocationManager *)manager didFailWithError:(NSError *) error
{
    NSLog(@"Could not find location: %@", error);
}
@end
