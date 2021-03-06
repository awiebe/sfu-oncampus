//
//  SFUWeatherViewController.h
//  OnCampus
//  Group 10
//  Nikhil Gaba, Abram Wiebe, Rafay Tanzeel, Kevin Grant, Sunny Chowdhury
//
//  Created by Kevin Grant on 2/25/15.
//  Copyright (c) 2015 Kevin Grant. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * Custom TableViewController used to display weather, and to display announcements from http://www.sfu.ca/security/sfuroadconditions/
 *
 * @author Kevin Grant
 * @version 1.0
 */
@interface SFUWeatherViewController : UITableViewController

 // Get current weather data
- (IBAction)getCurrentWeather:(id)sender;

@end
