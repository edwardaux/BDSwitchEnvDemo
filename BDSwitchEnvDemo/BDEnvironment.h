//
//  BDEnvironment.h
//  BDSwitchEnvDemo
//
//  Created by Craig Edwards on 23/02/2014.
//  Copyright (c) 2014 BlackDog Foundry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BDEnvironment : NSObject

@property (nonatomic, strong, readonly) NSString *environmentName;
@property (nonatomic, strong, readonly) NSString *buildCommit;
@property (nonatomic, strong, readonly) NSString *mySetting;

/**
 * Singleton instance for accessing environment-specific values
 */
+(instancetype)environment;

@end
