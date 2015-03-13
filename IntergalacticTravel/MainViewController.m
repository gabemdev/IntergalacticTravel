//
//  MainViewController.m
//  IntergalacticTravel
//
//  Created by Rockstar. on 3/10/15.
//  Copyright (c) 2015 Fantastik. All rights reserved.
//

#import "MainViewController.h"
#import "DestinationViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self preferredStatusBarStyle];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DestinationViewController *vc = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"red"]) {
        vc.title = @"Red Dwarf";
        vc.planetImage = [UIImage imageNamed:@"reddwarf"];
        [vc.navigationItem setHidesBackButton:YES];
    } else if ([segue.identifier isEqualToString:@"blue"]) {
        vc.title = @"Blue Star";
        vc.planetImage = [UIImage imageNamed:@"bluestar"];
        [vc.navigationItem setHidesBackButton:YES];
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (IBAction)unwindFromPlanet:(UIStoryboardSegue *)sender {
    
}
@end
