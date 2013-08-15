//
//  searchURLBuilder.m
//  MyMP
//
//  Created by James Owen on 15/08/2013.
//  Copyright (c) 2013 James Owen. All rights reserved.
//

#import "SearchUrlBuilder.h"

@implementation SearchUrlBuilder

-(id)init
{
    self = [super init];
    if(self)
    {
        self.URLPREFIX = @"http://findyourmp.parliament.uk/api/search?q=";
        self.URLSUFFIX = @"&f=js";
        self.searchQuery = @"";
    
    }
    return self;
}

-(void)buildUrl
{
    self.searchUrl = nil;
    [self removeWhiteSpace];
    self.searchUrl = [NSString stringWithFormat:@"%@%@%@",self.URLPREFIX,self.searchQuery,self.URLSUFFIX];
}

-(void)removeWhiteSpace
{
    self.searchQuery = [[self.searchQuery stringByReplacingOccurrencesOfString:@" " withString:@""]mutableCopy];
}



@end