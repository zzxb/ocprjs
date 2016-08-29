//
//  Student.h
//  ocprj5
//
//  Created by zzxb on 16/8/17.
//  Copyright © 2016年 zzxb. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *使用@property定义property时可以在@property与类型之间用括号添加一些额外的指示符，常用的指示符有assign、atomic、copy、retain、strong、week、等。下面对它们的用途和常常对应的属性讲解一下。
 
 - assign：该指示符号对属性只是简单的赋值，不更改引用计数。常用于NSInteger等OC基础类型，以及short、int、double、结构体等C数据类型，因为这些类型不存在被内存回收的问题。
 - atomic、nonatomic：指定setter和getter是否是原子操作，即是否线程安全。如果是atomic，那么存取方法都是线程安全的，即某一线程访问存或者取方法，其他线程不可以进入该存、取方法。nonatomic则不具备线程安全的功能。需要指出的是atomic是默认值，可以保证数据的完整性，但是相应的降低了性能，所以在单线程环境中建议使用nonatomic来提升性能。
 - copy：如果使用copy指示符，当调用setter方法对成员变量赋值时，会将被赋值的对象复制的一个副本，再将该副本给成员变量，相应的原先的被赋值的对象的引用计数加1。当成员变量的类型是可变类型，或其子类是可变类型，被赋值的对象在赋值后有可能再被修改，如果不需要这种修改，则可以考虑copy指示符。
 - getter、setter：用于为getter方法、setter方法指定自定义方法名。比如getter＝myName,setter=setName:，我们可以看到setter方法后面有一个（:）,这是因为我们需要在后面添加参数。
 - readonly、readwrite：readonly指示系统只合成getter方法，不合成setter方法；readwrite是默认值，指示系统需要合成setter方法和getter方法。
 - retain：当把某个对象赋值给该属性时，该属性原来所引用的对象的引用计数减1，被赋值对象的引用计数加1。在未启用ARC机制的的情况下，retain可以保证一个对象的引用计数大于1时，该对象不会被回收。启用ARC后一般较少使用retain
 - strong、weak：strong指示符该属性对被赋值对象持有强引用，而weak指示符指定该属性对被赋值对象持有弱引用。强引用的意思是：只要该强引用指向被赋值的对象，那么该对象就不会自动回收。弱引用的意思是：即使该弱引用指向被赋值的对象，该对象也可能被回收。如果不希望对象被回收，可以使用strong指示符。如果需要保证程序性能，避免内存溢出，可以使用weak，内存一旦被回收，指针会被赋值为nil。
 - unsafe_unretained：与weak不同，被unsafe_unretained指针所引用的对象被回收后，unsafe_unretained指针不会被赋为nil，可能会导致程序出错
 总结一下：
 
 - strong 和原来的retain比较相似，strong的property将对应__strong的指针，它将持有所指向的对象
 - weak 不持有所指向的对象，而且当所指对象销毁时能将自己置为nil，基本所有的outlet都应该用weak
 - unsafe_unretained 这就是原来的assign。当需要支持iOS4时需要用到这个关键字
 - copy 和原来基本一样..copy一个对象并且为其创建一个strong指针
 - assign 对于对象来说应该永远不用assign了，实在需要的话应该用unsafe_unretained代替(基本找不到这种时候，大部分assign应该都被weak替代)。但是对于基本类型比如int,float,BOOL这样的东西，还是要用assign
 
 基本数据类型，如：int,float,BOOL,double等，使用assign
 
 对象一般使用strong，在非ARC环境下，使用retain.
 
 所有UI界面的对象使用weak，例如outlet对象
 
 - atomic //default
 - nonatomic
 - strong = retain
 - weak = assign
 - retain
 - assign //default
 - unsafe_unretained
 - copy
 - readonly
 - readwrite //default
 */
@interface Student : NSObject
@property(assign,nonatomic) int stuID;
@property(strong,nonatomic) NSString *stuName;

+ (Student *) instance;
- (id) initWithStuId:(int) stuId
          andStuName:(NSString *)stuName;
@end
