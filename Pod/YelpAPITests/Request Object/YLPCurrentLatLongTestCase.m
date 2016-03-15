//
//  YLPCLLTestCase.m
//  YelpAPI
//
//  Created by David Chen on 1/28/16.
//  Copyright © 2016 Yelp. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <YelpAPI/YLPCurrentLatLong.h>

@interface YLPCurrentLatLongTestCase : XCTestCase

@end

@implementation YLPCurrentLatLongTestCase

- (void)testCLLReturnsExpectedString {
    double expectedLat = 30.12;
    double expectedLong = -122.22;
    
    YLPCurrentLatLong *cll = [[YLPCurrentLatLong alloc] initWithLatitude:expectedLat longitude:expectedLong];
    
    NSString *expectedString = [NSString stringWithFormat:@"%f,%f", expectedLat, expectedLong];
    
    XCTAssertEqualObjects(expectedString, cll.description);
}

@end
