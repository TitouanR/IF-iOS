//
//  IFArtist.m
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 24/10/2013.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

#import "IFArtist.h"

@implementation IFArtist

@synthesize artiste_id, name, pictureURL, style, description, day, stage, beginHour, endHour, website, facebook, twitter, youtube;

- (id) initWithDictionary: (NSDictionary*) dict {
    artiste_id = [dict valueForKey:@"id"];
    name = [dict valueForKey:@"name"];
    pictureURL = [dict valueForKey:@"picture"];
    style = [dict valueForKey:@"style"];
    description = [dict valueForKey:@"description"];
    day = [dict valueForKey:@"day"];
    stage = [dict valueForKey:@"stage"];
    beginHour = [dict valueForKey:@"beginHour"];
    endHour = [dict valueForKey:@"endHour"];
    website = [dict valueForKey:@"website"];
    facebook = [dict valueForKey:@"facebook"];
    twitter = [dict valueForKey:@"twitter"];
    youtube = [dict valueForKey:@"youtube"];
    
    return self;
}

@end
