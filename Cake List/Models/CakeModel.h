//
//  CakeModel.h
//  Cake List
//
//  Created by Charlie on 18/02/2018.
//  Copyright © 2018 Stewart Hart. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CakeModel : NSObject

@property (strong, nonatomic, retain) NSArray *objects;

+ (id)getInstance;

- (int)getData;

@end
