//
//  main.m
//  MedoDelirio3GS
//
//  Created by Rafael Schmitt on 12/31/24.
//  Copyright (c) 2024 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "Sound.h"

int main(int argc, char *argv[])
{
    @autoreleasepool {
        Sound *sound = [Sound new];
        sound->title = @"Eu preciso de uma pastilha";
        [sound printGreeting];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
