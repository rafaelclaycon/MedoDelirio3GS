//
//  Sound.h
//  MedoDelirio3GS
//
//  Created by Rafael Schmitt on 1/1/25.
//  Copyright (c) 2025 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sound : NSObject {
    
    @public
    NSString *id;

    @public
    NSString *title;
    
    @public
    NSString *authorId;
    
    @public
    NSString *authorName;
    
}

- (void)printGreeting;

@end
