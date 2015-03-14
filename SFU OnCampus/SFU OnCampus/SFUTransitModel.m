//
//  SFUTransitModel.m
//  OnCampus
//
//  Created by Nikhil Gaba on 2015-03-14.
//  Copyright (c) 2015 Simon Fraser University. All rights reserved.
//

#import "SFUTransitModel.h"

@implementation SFUTransitModel

NSArray* array;
-(SFUTransitModel*)init
{
    //This is a user defined path in interface builder
    //Take a look under the identity panel to see it.
    @try{
        NSString* path=[[NSBundle mainBundle]pathForResource:@"SFUTransitUpperLoop" ofType:@"plist"];
        array = [NSArray arrayWithContentsOfFile:path];
    }
    @catch (NSException* e)
    {
        
    }
    
    
    return self;
}


-(NSString*) stopStringForIndex:(NSUInteger)idx
{
    NSDictionary* d = [array objectAtIndex:idx];
    return [d objectForKey:@"stop"];
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

-(NSString*) routeStringForIndex: (NSUInteger) idx
{
    NSDictionary* d = [array objectAtIndex:idx];
    return [d objectForKey:@"route"];
}


@end
