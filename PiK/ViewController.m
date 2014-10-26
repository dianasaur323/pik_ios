//
//  ViewController.m
//  PiK
//
//  Created by Diana Hsieh on 10/22/14.
//  Copyright (c) 2014 JELLYFISH. All rights reserved.
//

#import "ViewController.h"

#import "Auth0Client.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)signInToSocialNetworks:(id)sender {
    
    Auth0Client *client = [Auth0Client auth0Client:@"jellyfish.auth0.com"
                                          clientId:@"1yOLAVx8aAO4vSwxrPOIqjWFh8SHg5fm" offlineAccess:0];
    
    [client loginAsync:self withCompletionHandler:^(NSMutableDictionary* error) {
        if (error) {
            NSLog(@"Error authenticating: %@", [error objectForKey:@"error"]);
        }
        else {
            // * Use client.auth0User to do wonderful things, e.g.:
            // - get user email => [client.auth0User.Profile objectForKey:@"email"]
            // - get facebook/google/twitter/etc access token => [[[client.auth0User.Profile objectForKey:@"identities"] objectAtIndex:0] objectForKey:@"access_token"]
            // - get Windows Azure AD groups => [client.auth0User.Profile objectForKey:@"groups"]
            // - etc.
        }
    }];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
