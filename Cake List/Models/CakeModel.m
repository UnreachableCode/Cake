//
//  CakeModel.m
//  Cake List
//
//  Created by Charlie on 18/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import "CakeModel.h"

@implementation CakeModel

+ (id)getInstance {
    static CakeModel *instance = nil;
    @synchronized(self) {
        if (instance == nil)
        {
            instance = [[self alloc] init];
        }
    }
    return instance;
}

- (int)getData{
    
    NSURL *url = [NSURL URLWithString:@"https://gist.githubusercontent.com/hart88/198f29ec5114a3ec3460/raw/8dd19a88f9b8d24c23d9960f3300d0c917a4f07c/cake.json"];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    NSError *jsonError;
    id responseData = [NSJSONSerialization
                       JSONObjectWithData:data
                       options:kNilOptions
                       error:&jsonError];
    if (!jsonError){
        self.objects = responseData;
        return 0;
    } else {
        return -1;
    }
}

@end
