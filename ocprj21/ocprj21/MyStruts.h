//
//  MyStruts.h
//  ocprj21
//
//  Created by jacky zheng on 2017/3/1.
//  Copyright © 2017年 jacky zheng. All rights reserved.
//

#ifndef MyStruts_h
#define MyStruts_h


struct MyPoint {
    int year;
    int month;
    int day;
};

typedef struct MyPoint MyPoint;

CG_INLINE MyPoint
MyPointMake(int year,int month,int day)
{
   MyPoint size; size.year = year; size.month = month; size.day = day; return size;
}




#endif /* MyStruts_h */


