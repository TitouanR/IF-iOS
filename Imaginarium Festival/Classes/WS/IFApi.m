//
//  IFApi.m
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 24/10/2013.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

#import "IFApi.h"
#import "ASIHTTPRequest.h"
#import "JSONKit.h"
#import "IFArtist.h"

@implementation IFApi

@synthesize request;

static IFApi *sharedApi = nil;

+ (IFApi *) sharedApi {
    if (!sharedApi)
        sharedApi = [[IFApi alloc] init];
    return sharedApi;
}

- (NSMutableArray *) getArtistsFromWS {
    NSString *urlString = [NSString stringWithFormat:@"%@%@%@", IFBaseUrl, IFRequestUrl,@"artists"];
    NSURL *url = [NSURL URLWithString:urlString];
    
    // Init ASIHTTP Request with URL
    [self setRequest:[ASIHTTPRequest requestWithURL:url]];
    
    // Start the Request
    [request startSynchronous];
    //Get the response status & content
    int statusCode = [request responseStatusCode];
    NSString *response = [request responseString];
    
    // If response = OK
    if (statusCode == 200) {
        
        //Create dictionnary from response
        NSDictionary *responseDict = [response objectFromJSONString];
        NSMutableArray *result = [[NSMutableArray alloc] init];
    
        // For each artist dictionnary in global dictionnary create a new IFArtist object
        for (NSDictionary *entry in responseDict) {
            IFArtist *artist = [[IFArtist alloc] initWithDictionary:entry];
            [result addObject:artist];
        }
        return result;
    }
    else {
        return NULL;
    }
}


@end
