//
//  SFULibraryCell.h
//  Multi Storyboard
//
//  Created by Kevin Grant on 2015-03-14.
//  Copyright (c) 2015 Simon Fraser University. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 * Custom UITableViewCell Class that is used to display library information for the SFULibraryViewController Class.
 *
 * @author Kevin Grant
 * @version 1.0
 */
@interface SFULibraryCell : UITableViewCell

 /**
 * Updates information for the computer availability for each location of each library
 * Uses SFU Library API to determine availability.
 *
 * @param available		label representing the number of computers available for a certain location
 * @param inUse			label representing the number of computers in use for a certain location
 * @param location 		label representing the location's name to be set
 * @param name 			name of the location to be set as the location's name
 * @param value 		the name for the location as returned by the API
 * @param progressView	the progress bar representing the number of computers available
 * @param d 			dictionary returned by API containing all the computer information
 */
- (void)updateComputerAvaiability:(UILabel*) available used:(UILabel*) inUse locationLabel:(UILabel*) location locationName: (NSString*) name locationValue:(NSString*) value progressBar:(UIProgressView*) progressView withDictionary:(NSDictionary*) d;

 /**
 * Sets any text that is not needed for a library to empty and sets the progress bars to a clear colour.
 * The SFULibraryCell was built to have enough information for all locations of SFU Burnaby; SFU Surrey and SFU Vancouver
 * do not require as much information. So to hide these excess labels, they are made invisibile.
 *
 * @param available		label representing the number of computers available for a certain location
 * @param inUse			label representing the number of computers in use for a certain location
 * @param location 		label representing the location's name to be set
 * @param progressView	the progress bar representing the number of computers available
 */
-(void)emptyComputerLabels:(UILabel*) available used:(UILabel*) inUse locationLabel:(UILabel*) location progressBar:(UIProgressView*) progressView;

// UI View
@property (weak, nonatomic) IBOutlet UIView *libraryView;

// Library Name
@property (weak, nonatomic) IBOutlet UILabel *libraryName;

// Library Hours
@property (weak, nonatomic) IBOutlet UILabel *hours;

// Computer Availability Labels
@property (weak, nonatomic) IBOutlet UILabel *availabilityLabel;
@property (weak, nonatomic) IBOutlet UILabel *available;

// Open or closed
@property (weak, nonatomic) IBOutlet UILabel *libraryStatus;

// Location Names
@property (weak, nonatomic) IBOutlet UILabel *locationOne;
@property (weak, nonatomic) IBOutlet UILabel *locationTwo;
@property (weak, nonatomic) IBOutlet UILabel *locationThree;
@property (weak, nonatomic) IBOutlet UILabel *locationFour;
@property (weak, nonatomic) IBOutlet UILabel *locationFive;
@property (weak, nonatomic) IBOutlet UILabel *locationSix;
@property (weak, nonatomic) IBOutlet UILabel *locationSeven;
@property (weak, nonatomic) IBOutlet UILabel *locationEight;

// Computers Available
@property (weak, nonatomic) IBOutlet UILabel *availableOne;
@property (weak, nonatomic) IBOutlet UILabel *availableTwo;
@property (weak, nonatomic) IBOutlet UILabel *availableThree;
@property (weak, nonatomic) IBOutlet UILabel *availableFour;
@property (weak, nonatomic) IBOutlet UILabel *availableFive;
@property (weak, nonatomic) IBOutlet UILabel *availableSix;
@property (weak, nonatomic) IBOutlet UILabel *availableSeven;
@property (weak, nonatomic) IBOutlet UILabel *availableEight;

// Progress Bars
@property (weak, nonatomic) IBOutlet UIProgressView *progressOne;
@property (weak, nonatomic) IBOutlet UIProgressView *progressTwo;
@property (weak, nonatomic) IBOutlet UIProgressView *progressThree;
@property (weak, nonatomic) IBOutlet UIProgressView *progressFour;
@property (weak, nonatomic) IBOutlet UIProgressView *progressFive;
@property (weak, nonatomic) IBOutlet UIProgressView *progressSix;
@property (weak, nonatomic) IBOutlet UIProgressView *progressSeven;
@property (weak, nonatomic) IBOutlet UIProgressView *progressEight;

// Computers in use
@property (weak, nonatomic) IBOutlet UILabel *usedOne;
@property (weak, nonatomic) IBOutlet UILabel *usedTwo;
@property (weak, nonatomic) IBOutlet UILabel *usedThree;
@property (weak, nonatomic) IBOutlet UILabel *usedFour;
@property (weak, nonatomic) IBOutlet UILabel *usedFive;
@property (weak, nonatomic) IBOutlet UILabel *usedSix;
@property (weak, nonatomic) IBOutlet UILabel *usedSeven;
@property (weak, nonatomic) IBOutlet UILabel *usedEight;






@end