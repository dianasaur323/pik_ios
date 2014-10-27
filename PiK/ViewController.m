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

@property (nonatomic)Auth0Client *client;

@end

@implementation ViewController

-(Auth0Client *)client{
    if(!_client) _client=[Auth0Client auth0Client:@"jellyfish.auth0.com"
                                         clientId:@"1yOLAVx8aAO4vSwxrPOIqjWFh8SHg5fm" offlineAccess:0];
    return _client;
}

- (IBAction)signInToFacebook:(id)sender {
    
    UISwitch *loginSwitch=(UISwitch *)sender;
    
    if(loginSwitch.tag==0){
        [self.client loginAsync:self connection:@"facebook" withCompletionHandler:^(NSMutableDictionary* error)
         {
             /* Use client.auth0User to do wonderful things */
         }];
    }
    else if(loginSwitch.tag==1){
        [self.client loginAsync:self connection:@"linkedin" withCompletionHandler:^(NSMutableDictionary* error)
         {
             /* Use client.auth0User to do wonderful things */
         }];
    }
    
    
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
