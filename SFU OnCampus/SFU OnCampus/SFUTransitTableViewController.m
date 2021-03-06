//
//  SFUTransitTableViewController.m
//  OnCampus
//  Group 10
//  Nikhil Gaba, Abram Wiebe, Rafay Tanzeel, Kevin Grant, Sunny Chowdhury
//
//  Created by Nikhil Gaba on 2015-03-14.
//  Copyright (c) 2015 Simon Fraser University. All rights reserved.
//
//presently no known bugs

#import "SFUTransitTableViewController.h"

@interface SFUTransitTableViewController ()

@end

@implementation SFUTransitTableViewController

/*- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return NO;
}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

       // SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        //controller.loopPath = [self.tableView indexPathForSelectedRow];
    
    //---------------------------------
    //determines which bus loop to load
    //---------------------------------
    if ([[segue identifier] isEqualToString:@"upper"])
    {
        SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        controller.loopName=@"SFUTransitUpperLoop"; // sets name of populating plist
    }
    
    else if ([[segue identifier] isEqualToString:@"lower"])
    {
        SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        controller.loopName=@"SFUTransitLowerLoop"; //sets name of populating plist
    }
    
    else if ([[segue identifier] isEqualToString:@"tower"])
    {
        SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        controller.loopName=@"SFUTransitTowerRd"; //sets name of populating plist
    }
    
    else if ([[segue identifier] isEqualToString:@"science"])
    {
        SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        controller.loopName=@"SFUTransitScienceRd"; //sets name of populating plist
    }
    
    else if ([[segue identifier] isEqualToString:@"residence"])
    {
        SFUUpperLoopController *controller = (SFUUpperLoopController *)[segue destinationViewController];
        controller.loopName=@"SFUTransitResidenceRd"; //sets name of populating plist
    }

    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
