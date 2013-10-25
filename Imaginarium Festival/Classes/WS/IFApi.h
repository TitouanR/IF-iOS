//
//  IFApi.h
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 24/10/2013.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

//
//  IFApi is a singleton that contains every WS calls 
//

#import <Foundation/Foundation.h>
@class ASIHTTPRequest;

@interface IFApi : NSObject {
    ASIHTTPRequest *request;
}


+ (IFApi *) sharedApi;
@property (nonatomic, strong) ASIHTTPRequest *request;


//Methods
- (NSMutableArray *) getArtistsFromWS ;

@end
