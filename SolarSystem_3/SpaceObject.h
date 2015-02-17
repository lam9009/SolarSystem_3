//
//  SpaceObject.h
//  SolarSystem_3
//
//  Created by Alfred on 17/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) UIImage *spaceImage;

-(id)initWithData: (NSDictionary *)data andImage:(UIImage *)image;

@end
