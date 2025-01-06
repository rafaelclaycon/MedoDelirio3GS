//
//  MD3APIClient.h
//  MedoDelirio3GS
//
//  Created by Rafael Schmitt on 1/6/25.
//  Copyright (c) 2025 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD3APIClient : NSObject

+ (MD3APIClient*)sharedClient;

- (void)getSounds:(void (^)(NSArray *data, NSError *error))completion;

@end
