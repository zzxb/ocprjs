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

另外，import “”与<>区别:

"":用于引入内部第三方类或类库

<>:用于引用系统类或类库



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

###### super相当于java中的super,self相当于java中的this.

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

#### ocprj6之常用字符串操作函数 

常见的字符串创建

```Objective-C
NSString *str = @"abcdefg";
```

指针字符类型的转换为字符串

```Objective-C
char *text = "一二三四五六七八九十";
str = [NSString stringWithUTF8String:text];
```

将URL请求响应转换为字符串

```Objective-C
NSURL *url = [NSURL URLWithString:@"http://www.weather.com.cn/adat/sk/101010100.html"];
NSString *strText = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
```

将字符串转换为全大写字母/全部小写/首字母大写

```Objective-C
//转换成大写
NSLog(@"大写: %@", [str uppercaseString]);
    
//转换成小写
NSLog(@"小写: %@", [str lowercaseString]);
    
//转换成首字母大写
NSLog(@"首字母大写: %@", [str capitalizedString]);
```

判断两个字符串是否相等

```Objective-C
BOOL result = [@"abc" isEqualToString:@"ABC"];
```

字符串连接

```Objective-C
NSString *str2 = [str stringByAppendingString:@"Shandong"];

NSString *str3 = [NSString stringWithFormat: @"城市信息为： %@ 市 %@ 省",str,str2];

```

字符串搜索

```Objective-C
    NSString *str = @"ShangHai123456";
    
    NSLog(@"是否已Sh开头%i", [str hasPrefix:@"Sh"]);
    NSLog(@"是否已56结尾%i", [str hasSuffix:@"56"]);
    
    //查找字符串所在位置
    NSRange range = [str rangeOfString:@"i12"];
    
    if (range.location == NSNotFound)
    {
        NSLog(@"不能找到");
    }
    else
    {
        NSLog(@"找到的范围: %@", NSStringFromRange(range));
    }    

```

字符串截取

```Objective-C
    NSString *str = @"123456789";
    
    NSLog(@"%@", [str substringFromIndex:3]);
    
    NSLog(@"%@", [str substringToIndex:3]);
    
    NSRange range = NSMakeRange(4, 5);
    NSLog(@"%@", [str substringWithRange:range]);
    
    NSString *str2 = @"1,2,3-4-5-6,7,8,9";
    NSArray *array = [str2 componentsSeparatedByString:@"-"];
    for (NSString *var in array) {
        NSLog(@"%@",var);
    }
    
    NSString *str3 = [array objectAtIndex:0];
    NSLog(@"%@", str3);

```

字符串转换

```Objective-C
    NSString *str = @"123";
    
    int a = [str intValue];
    NSLog(@"%i", a);
    
    float b = [str floatValue];
    NSLog(@"%.2f", b);
    
    //返回字符串的个数
    NSString *str1 = @"我是字符串!";
    NSLog(@"%zi", [str1 length]);
    
    //取出对应的字符串
    unichar temp = [@"abcdefg" characterAtIndex:3];
    NSLog(@"%c", temp);
    
    //字符串转换为字符
    const char *s = [@"uvwxyz" UTF8String];
    NSLog(@"%s", s);

```

### ocprj7之数组

##### 不可变数组

创建数组

```Objective-C
        // 创建数组两种方式
        NSArray *array = @[@"one",@"two",@"three"];
        
         NSArray *array2 = nil;
        // 注意最后的nil只是一个结束标识，而不是其中的一个元素
        array2 = [NSArray arrayWithObjects:@"one",@"two",@"three",nil];

```

取元素(查)

```Objective-C
NSLog(@"%@", array[2]);
// 取出相关元素的另一种写法
NSLog(@"%@", [array objectAtIndex:1]);        
//第一个元素
NSLog(@"%@", [array firstObject]);
//最后一个元素
NSLog(@"%@", [array lastObject]);
// 从一个数组提取一个子数组
NSArray *array5 = [array2subarrayWithRange:NSMakeRange(2, 2)];
// containsObject可以用来判断数组是否包含一个指定的元素
if ([array4 containsObject:@"one"]) {
   NSLog(@"array4 包含 one");
}
// 查出一个元素在数组中的索引位置
NSLog(@"one 在array4中的索引位置 %lu", [array4 indexOfObject:@"three"]);        
```

新增元素生成新的数组(改)

```Objective-C
// arrayByAddingObject给一个数组对象加一个元素生成一个新的数组
NSArray *array1 = [array arrayByAddingObject:@"four"];
// arrayByAddingObjectsFromArray给一个数组对象加一个数组生成一个新的数组
NSArray *array2 = [array arrayByAddingObjectsFromArray:array1];        NSLog(@"array:%@", array2);      
```

获取大小

```Objective-C
NSLog(@"%lu", [array count]);
```

循环

```Objective-C

for(NSString *var in array){
	NSLog(@"%@",var)
}

```

其他

```Objective-C
NSString *str1 = @"one:two:three:four";
// 用一个固定的分隔符把一个字符串隔开创建一个数组
NSArray *array4 = [str1 componentsSeparatedByString:@":"];
```

##### 可变数组(相当于List)

创建

```Objective-C
// 创建一个可变数组
NSMutableArray *mtArray2 = [NSMutableArray arrayWithCapacity:50];
NSMutableArray *mtArray1 = [[NSMutableArray alloc] init];
```

添加元素(增)

```Objective-C
// 往可变数组添加一个新的元素
[mtArray1 addObject:@"one"];
NSObject *newObj1 = [NSObject new];
[mtArray1 addObject:newObj1];
[mtArray1 addObject:@"one1"];
[mtArray1 addObject:@"one2"];
[mtArray1 addObject:@"one3"];
```

获取元素(查)

```Objective-C
NSLog(@"%@", array[2]);
// 取出相关元素的另一种写法
NSLog(@"%@", [array objectAtIndex:1]);    
```

修改元素(改)

```Objective-C
// 替换掉指定索引位置的元素
[mtArray1 replaceObjectAtIndex:2 withObject:@"xxxxx"];
//在指定的索引位置插入一个新的元素
[mtArray1 insertObject:@"one4" atIndex:2];   
```

删除元素(删除)

```Objective-C
 // 从可变数组中移除一个元素
 [mtArray1 removeObject:@"one2"]; 
 [mtArray1 removeObjectAtIndex:2];  
```

### ocprj7_1之NSDictionary（字典）

##### 不可变字典

创建

```Objective-C
#value-key的赋值,最后一个必须是nil
NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"zzxb",@"name",@"13905310001",@"number", nil];
#初始化一个元素
NSDictionary *dict1 = [NSDictionary dictionaryWithObject:@"1" forKey:@"a"];
#初始化，利用数组
NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1",@"2",@"3", nil] forKeys:[NSArray arrayWithObjects:@"a",@"b",@"c", nil]];
```

数量

```Objective-C
int count = [dist2 count];
```

得到词典中所有KEY值/VALUE值

```Objective-C
NSArray * allKeys = [dict2 allKeys];
NSLog(@"allKeys = %@",allKeys);
NSArray *allValues = [dict2 allValues];
NSLog(@"allValues = %@",allValues);
```

获取KEY对应VALUE

```Objective-C
NSString *value = [dict2 valueForKey:@"b"];
NSLog(@"value = %@",value);
        
NSString *value2 = [dict2 objectForKey:@"b"];
NSLog(@"value = %@",value2);
```

获得KEYS对应VALUES（数组）

```Objective-C
NSArray *strarray = [dict2 objectsForKeys:[NSArray arrayWithObjects:@"a",@"d",@"c", nil] notFoundMarker:@"not found"];
NSLog(@"strarray = %@",strarray);
```

遍历之for循环

```Objective-C
for (NSString *key in dict2) {
    NSLog(@"%@ = %@",key,[dict2 objectForKey:key]);
}
```
注意：必须变量名为key

遍历之枚举

```Objective-C
NSEnumerator *en = [dict2 keyEnumerator];
id keyvalue = nil;
while (keyvalue = [en nextObject]) {
  NSLog(@"key:%@-value:%@",keyvalue,[dict2 valueForKey:keyvalue]);
}
```

##### 可变字典

创建

```Objective-C
NSMutableDictionary *dict3 = [[NSMutableDictionary alloc] init];
```

添加元素(增)

```Objective-C
[dict3 setObject:@"1" forKey:@"a"];
```

删除元素(删)

```Objective-C
[dict3 removeObjectForKey:@"a"];
```

获取KEY对应VALUE（查）

```Objective-C
NSString *value = [dict2 valueForKey:@"b"];
NSLog(@"value = %@",value);
        
NSString *value2 = [dict2 objectForKey:@"b"];
NSLog(@"value = %@",value2);
```

修改元素值

```Objective-C
//原来有key=a的值，再设置就相当于修改
[dict3 setObject:@"ffff" forKey:@"a"];
```

#### ocprj8之继承与多态

##### OC中的继承

1.OC中的继承用":"(冒号),java中用extends

2.OC所有类的父类都是NSObject,而JAVA是Object

3.在OC中不允许隐身继承，例如：必须每个类显示继承NSObject，而JAVA默认继承Object是隐式的

例如：

```Objective-C
@interface Teacher : NSObject{
}
```

##### oc中原则上没有重载,这与其函数语法定义有关系.

##### oc中的重写与多态,同JAVA中的概念一致。

##### oc中用@class实现动态后期引入,等同于java中的Class.forname();

#### ocprj10之OC协议

OC协议与JAVA中的接口概念非常相似

协议常用UI开发中事件设计模式，即委托设计模式的实现.

@protocol为协议定义关键字，通常协议只是定义方法（函数），所以，只有.h文件

与JAVA区别，在OC中协议常用分为两块，@required(必须、要求)和@optional(可选)

@required关键字下定义的方法，实现协议的类，必须实现该方法,默认的方法都是@required

@optional可选关键字是指可以选择性实现或不实现

OC协议中不允许定义非方法的变量

所以，OC中的协议概念更加灵活，比JAVA中对接口的定义更加严谨。

例如：

Emp.h

```Objective-C
@protocol Emp <NSObject>

//必须要实现的方法
@required
- (void) work;
- (void) gongzi;

//可选
@optional
- (void) dakai;

@end
```

在OC中实现一个协议的方法:

SEEmp.h

```Objective-C
//引入协议
#import "Emp.h"

@interface SEEmp : NSObject<Emp>

- (void) goutong;

@end
```

说明：

1.利用<>(尖括号)引入协议名称，如果是实现多个协议用逗号分隔(,).

2.需要实现协议中的方法，不用在.h文件再次定义。(goutong是扩展方法)

协议的实例化方式：

1.实例化协议的子类

```Objective-C
SEEmp *se = [[SEEmp alloc] init];
```
2.多态方式的实例化

```Objective-C
id<Emp> se = [[SEEmp alloc] init];
```

3.强制类型转换

```Objective-C
(SEEmp *)se
```

4.基于协议的多态

```Objective-C
- (void) tinghuibao : (id<Emp>)emp;
```
#### ocprj18之基于AFNetworking框架的异步webservice访问

##### 什么是AFNetworking框架？

AFNetworking是IOS和MAC OS上常用的第三方网络异步访问库，它是一个开源的，在[GITHUB](https://github.com/AFNetworking/AFNetworking)上有最新的源码和说明。

##### 基于cocoapods依赖安装AFNetworking框架

1.编写配置文件Podfile

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios,'8.0'
platform :osx,'10.11'
target 'ocprj18' do
pod 'AFNetworking', '~> 3.0'
end
```

2.执行

```
$ pod install
```



##### 使用AFNetworking框架：GET请求和POST请求的访问

```Objective-C
//GET
AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
[manager GET:@"http://example.com/resources.json" parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
    NSLog(@"JSON: %@", responseObject);
} failure:^(NSURLSessionTask *operation, NSError *error) {
    NSLog(@"Error: %@", error);
}];
```

```Objective-C
//POST
AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
session.requestSerializer = [AFJSONRequestSerializer serializer];
NSMutableDictionary *params = [NSMutableDictionary dictionary];
params[@"start"] = @"1";
params[@"end"] = @"5";
    
[session POST:urlStr parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    NSLog(@"请求成功");
} failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    NSLog(@"请求成功");
}];
```

##### 在MAC OS命令行下使用AFNetworking的说明
由于AFNetworking是基于网络的异步访问库，而Main函数下命令行程序是同步访问，所以，需要使用NSRunLoop模拟异步。

代码如下：

```Objective-C
    do {
        @autoreleasepool
        {
            //在此处添加AFNetworking代码
            [[NSRunLoop currentRunLoop] run];
        }
    } while (YES);
```

##### 关于AFNetworking 3.0 @"NSLocalizedDescription" :@"Request failed: unacceptable content-type: text/html"错误的解决方案

1.修改AFNetworking中AFURLResponseSerialization.m文件

2.在226行,将

```Objective-C
self.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", nil];
```

改成

```Objective-C
self.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json", @"text/javascript", nil];
```

增加了一个 @"text/html"

##### 解决JSON串在XCODE控制台显示UNICODE（乱码问题）

```Objective-C
NSData *jsonData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];    
NSString *jsonStr = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
```

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

