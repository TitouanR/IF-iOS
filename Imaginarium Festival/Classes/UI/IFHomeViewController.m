//
//  IFHomeViewController.m
//  Imaginarium Festival
//
//  Created by Titouan Rossier on 22/10/13.
//  Copyright (c) 2013 TitouanRossier. All rights reserved.
//

#import "IFHomeViewController.h"
#import "IFArtist.h"

@interface IFHomeViewController ()

@end

@implementation IFHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSMutableArray* artists = [[IFApi sharedApi] getArtistsFromWS];
    for (IFArtist *a in artists) {
        NSLog(@"Artist : %@ , %@ \n", a.artiste_id, a.name);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
