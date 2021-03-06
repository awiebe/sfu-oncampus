//
//  RSSModel.m
//  OnCampus
//
//  Created by Rafay Tanzeel on 2015-03-16.
//  Copyright (c) 2015 Simon Fraser University. All rights reserved.
//

#import "RSSModel.h"

@interface RSSModel ()

@end

@implementation RSSModel

NSArray* array;
-(RSSModel*)init
{
    //This is a user defined path in interface builder
    //Take a look under the identity panel to see it.
    @try{
        NSString* path=[[NSBundle mainBundle]pathForResource:@"SFURSSURLs" ofType:@"plist"];
        array = [NSArray arrayWithContentsOfFile:path];
    }
    @catch (NSException* e)
    {
        
    }
    
    
    return self;
}


-(void)initWithPlist:(NSString*) plist
{
    //This is a user defined path in interface builder
    //Take a look under the identity panel to see it.
    @try{
        NSString* path=[[NSBundle mainBundle]pathForResource:plist ofType:@"plist"];
        array = [NSArray arrayWithContentsOfFile:path];
    }
    @catch (NSException* e)
    {
        
    }
    
}


-(NSString*) urlStringForIndex:(NSUInteger)idx
{
    NSDictionary* d = [array objectAtIndex:idx];
    return [d objectForKey:@"url"];
}
-(NSString*) titleStringForIndex:(NSUInteger)idx
{
    NSDictionary* d = [array objectAtIndex:idx];
    return [d objectForKey:@"title"];
}

-(NSInteger)sizeOfArray
{
    return [array count];
}

-(NSString*) imageNameForIndex: (NSUInteger) idx
{
    NSDictionary* d = [array objectAtIndex:idx];
    return [d objectForKey:@"image"];
}

@end
