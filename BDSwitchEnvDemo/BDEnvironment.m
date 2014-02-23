//
//  BDEnvironment.m
//  BDSwitchEnvDemo
//
//  Created by Craig Edwards on 23/02/2014.
//  Copyright (c) 2014 BlackDog Foundry. All rights reserved.
//

#import "BDEnvironment.h"

@implementation BDEnvironment

+(instancetype)environment {
	static BDEnvironment *instance = nil;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		instance = [[BDEnvironment alloc] init];
	});
	return instance;
}

-(instancetype)init {
	self = [super init];
	if (self != nil) {
		NSDictionary *plist = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"environment" ofType:@"plist"]];
		_environmentName = plist[@"environment"];
		_buildCommit     = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
		_mySetting       = plist[@"mySetting"];
	}
	return self;
}

@end
