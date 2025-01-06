//
//  MD3APIClient.m
//  MedoDelirio3GS
//
//  Created by Rafael Schmitt on 1/6/25.
//  Copyright (c) 2025 __MyCompanyName__. All rights reserved.
//

#import "MD3APIClient.h"

@implementation MD3APIClient

+ (MD3APIClient*)sharedClient {
    static MD3APIClient *sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[self alloc] init];
    });
    return sharedClient;
}

- (void)getSounds:(void (^)(NSArray *, NSError *))completion {
    NSURL *url = [NSURL URLWithString:@"http://medodelirioios.com:8080/api/v3/update-events/all"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [NSURLConnection sendAsynchronousRequest:request
                                       queue:[NSOperationQueue mainQueue]
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
    
        if (error) {
            if (completion) {
                completion(nil, error);
            }
            return;
        }
        
        NSError *jsonError = nil;
        NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data
                                                             options:0
                                                               error:&jsonError];
       if (jsonError) {
           if (completion) {
               completion(nil, jsonError);
           }
           return;
       }
                               
       if (completion) {
           completion(jsonArray, nil);
       }
    }];
}

@end
