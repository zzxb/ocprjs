这是一个基于Objective-C语言的基础案例集。旨在用于给初学者快速了解Objective-C语言的语法。

注：以下将Objective-C简称OC

- XCode
- Objective-C
- git
- github

## 问答

#### Objective-C干什么用？

主要是用于IOS设备和MACOS应用程序的开发语言<br/>

#### 案例集面向谁？

主要是面对高校以及一些对Objective-C零基础的人群。<br/>

## 目录
1. ocprj1 这个案例是关于基础知识的案例之基本数据类型使用以及输入输出 
2. ocprj2 这个案例是关于循环结构的案例集，包括:for,while,do...while等循环。
3. ocprj3 这个案例是选择结构的案例集，包括：if,if...else,switch...case
4. ocprj4 这个案例是本案例是关于OC中指针(*)与引用(&)的区别案例集。
5. ocprj5 这个案例是关于类相关的基本案例，包括基本类创建，类属性相关，构造函数，自定义方法，静态方法。
6. ocprj6 这个案例是关于NSString类的基本使用案例。
7. ocprj7和ocprj7_1 这个案例是关于集合相关类的基本使用案例。
8. ocprj8 这个案例是关于类继承和多态的基本使用案例。
9. ocprj9 这个案例是关于分类的基本使用案例。
10. ocprj10 这个案例是关于协议的基本使用案例。
11. ocprj11 这个案例是关于委托设计模式的案例.
12. ocprj12 这个案例是基于协议的委托设计模式的案例。
13. ocprj13 这个案例是一个基于对象，继承，多态的综合案例，宠物医院。
14. ocprj14 这个案例是一个基于类的业务类设计案例.
15. ocprj16 这个案例是一个基于类的业务类设计案例2.
10. ocprj17 这个案例是基于CocoaPods构建使用JSONKit第三包解析JSON的基本使用案例。
11. ocprj18 这个案例是关于访问基于restful的web请求的基本使用案例。
12. ocprj19 这个案例是介绍swift语言基础的案例。

## 开发者

- zzxb


## 版本

V 1.0.0

## 核心知识点

#### 1.ocprj1

1.main函数是入口整个工程的入口函数，一个工程有且仅有一个main函数。这点与java不同<br/>
2.NSLog相当于System.out.println<br/>
3.每一个字符串都是以'@'开头，切记!<br/>
4.占位符的使用<br/>

```Objective-C
        int num = 10;
        float pi = 3.14f;
        BOOL flag = true;
        char myChar = 'd';
        NSLog(@"整数的占位符为i:%i",num);//10
        //可以用%.xf控制浮点类型小数点位数，x为控制的个数
        NSLog(@"浮点类型的占位符为f:%.2f",pi);//3.14
        NSLog(@"布尔类型的占位符为d:%d",flag);//值为：1
        NSLog(@"字符类型的占位符为c:%c",myChar);
        NSLog(@"请输入整型的数字:");

```

5.oc中的输入用scanf，与c语言的一直，但是，仅能输入int,float,char,BOOL等类型，不能够输入NSString类型.


```Objectvie-C
        int myNum = 0;
        scanf("%i",&myNum);
        NSLog(@"获得输入的数字:%i",myNum);

```

6.import与include的区别：<br/>

import检查是否有重复包含的类库，如果有，则忽略。<br/>

include不检查是否有重复的类库。<br/>



#### 2.ocprj4之指针以及引用

1.什么是指针？<br/>

在内存中，任何一个变量都可以看成由三部分组成：变量名，值，以及存放该值的地址。<br/>

如果有一个变量，里面存储的值等于另外一个变量的地址值，则，可以把这个变量看做指针。<br/>

例如：声明指针变量<br/>

```Objective-C

        int *var; //声明指针变量
        int a = 10;  //int变量
        var = &a //a变量的引用(&)，即是a变量地址，那么p的值就为a的地址
        NSLog(@"a变量的地址为:%p",&a);//打印a的地址：0x7fff5fbff83c
        NSLog(@"var指针变量的值为:%p",var);//0x7fff5fbff83c
        NSLog(@"*var的值与a的值相同,%i",*var);//10

```

那么，指针的指针变量：<br/>

```Objective-C
        int **myPoint;//指针的指针变量
        myPoint = &var;
        NSLog(@"**myPoint的值与a的值相同,%i",**myPoint);//10
```

#### 3.ocprj5之类基础定义以及自定方法

定义一个类，是由两个部分文件组成：.h和.m<br/>

.h文件：是头文件，定义变量以及声明方法。例如：<br/>

Teacher.h<br/>

```Objective-C

@interface Teacher : NSObject
{
    //定义变量区
    int tid;
    NSString *tName;
}

/**
 * 方法的定义：
 *
 */

- (void) setTid: (int)tid;
- (void) setTName: (NSString *)tName;
- (int) getTid;
- (NSString *) getTName;

@end

```

@interface 定义类的关键字<br/>

NSObject   是一切类的基类，相当于java中的Object类<br/>

在.h文件中声明的变量基本上都是公有变量，也可以用@private声明为私有变量。但苹果的代码规范中很少使用@private声明.由于Objective-C的动态消息传递机制，OC中不存在真正意义上的私有方法,如果你不在.h文件中声明，只在.m文件中实现，或在.m文件的Class Extension里声明，那么基本上和私有方法差不多。简而言之，将你希望公有的放到.h文件，私有的放到.m文件。在import时只import .h文件.<br/>

Teacher.m<br/>

```Objective-C

#import "Teacher.h"

@implementation Teacher

- (void) setTid:(int)parTid
{
    self.tid = parTid;
}

- (NSString *) getTName
{
    return tName;
}

- (int) getTid
{
    return tid;
}

- (void) setTName:(NSString *)parTName
{
    self.tName = parTName;
}

- (void)test
{
    NSLog(@"私有方法");
}


@end

```

import           引用.h文件<br/>

@implementation  实现.h文件中的所有方法.<br/>

test方法          私有方法<br/>

Student.h<br/>

```Objective-C

@interface Student : NSObject
@property(assign,nonatomic) int stuID;
@property(strong,nonatomic) NSString *stuName;

+ (Student *) instance;
- (id) initWithStuId:(int) stuId
          andStuName:(NSString *)stuName;
@end

```

@property 用于定义可自动生成getter/setter变量

#### 对于@property属性的详解

使用@property定义property时可以在@property与类型之间用括号添加一些额外的指示符，常用的指示符有assign、atomic、copy、retain、strong、week、等。下面对它们的用途和常常对应的属性讲解一下。
 
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

#### oc中方法的定义

1.定义结构<br/>

StudentService.h<br/>

```Objective-C
@interface StudentService : NSObject
- (BOOL)loginFromForStuName:(NSString *) stuName
                  andStuPwd:(NSString *) stuPwd;

@end

```

-/+: - 代表公有方法。+ 代表静态方法<br/>

(type):返回值类型，void/BOOL/int/....<br/>

方法名：loginFormForStuName......andStuPwd<br/>

(NSString *) 参数类型,stuName变量名，用:分隔多个参数<br/>

2.自定义构造方法<br/>

```Objective-C
//自定义构造方法
- (id) initWithStuId:(int) stuId
          andStuName:(NSString *)stuName
{
    //调用父类构造方法
    self = [super init];
    if(self != nil)
    {
        _stuID = stuId;
        _stuName = stuName;
    }
    return self;
}
```

3.静态方法<br/>

```Objective-C
//静态方法
+ (Student *)instance
{
    return [[Student alloc] init];
}
```

#### 使用类(调用方法)

使用类/调用构造方法,使用alloc实例化类，而尽量不要用new<br/>

```Objective-C
Student *stu = [[Student alloc] init];
Student *stu2 = [[Student alloc] initWithStuId:1 andStuName:@"KKK"];//自定义构造方法
```

调用自定义方法<br/>

```Objective-C
StudentService *myService = [[StudentService alloc] init];
BOOL isLogin = [myService loginFromForStuName:@"zzxb" andStuPwd:@"qaz123"];
```

调用静态方法<br/>

```Objective-C
Student *stu = [Student instance];
```

使用类的属性<br/>

```Objective-C
stu.stuID = 1;
stu.stuName = @"zzxb";
```

##### 总结：调用类属性使用点语法(.),调用类方法使用[],实例化类使用alloc


## 修改日志
- 2016-8-29:
- [x] 创建演示项目,并对一些配置文件进行了注解。
- 2016-8-30:
- [x] 规划了整个教程的目录以及先后顺序。

## 参考资源
以下是在编写案例中收集的资源,对深入理解与运用有帮助

- [纽约时报移动团队 Objective-C 项目风格指南中文版](https://github.com/zzxb/NYTimes-Objective-C-Style-Guide-ZH)
- [Google Objective-C Style Guide 中文版](http://zh-google-styleguide.readthedocs.io/en/latest/google-objc-styleguide/)
- [iOS开发60分钟入门](https://github.com/qinjx/30min_guides/blob/master/ios.md)


------
建议使用XCode开发工具。

