//
//  IFArtist.h
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 24/10/2013.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IFArtist : NSObject {
    NSString* artist_id;
    NSString* name;
    NSString* pictureURL;
    NSString* style;
    NSString* description;
    NSString* day;
    NSString* stage;
    NSString* beginHour;
    NSString* endHour;
    NSString* website;
    NSString* facebook;
    NSString* twitter;
    NSString* youtube;
}

@property (nonatomic, strong) NSString* artiste_id;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* pictureURL;
@property (nonatomic, strong) NSString* style;
@property (nonatomic, strong) NSString* description;
@property (nonatomic, strong) NSString* day;
@property (nonatomic, strong) NSString* stage;
@property (nonatomic, strong) NSString* beginHour;
@property (nonatomic, strong) NSString* endHour;
@property (nonatomic, strong) NSString* website;
@property (nonatomic, strong) NSString* facebook;
@property (nonatomic, strong) NSString* twitter;
@property (nonatomic, strong) NSString* youtube;

//Methods

- (id) initWithDictionary: (NSDictionary*) dict;

@end
