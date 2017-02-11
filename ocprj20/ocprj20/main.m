//
//  main.m
//  ocprj20
//
//  Created by zzxb on 17/2/8.
//  Copyright © 2017年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestSelector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        TestSelector *ts = [[TestSelector alloc] init];
        [ts callToSelectorMethod];
    }
    return 0;
}
