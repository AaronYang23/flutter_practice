# flutter_practice
笔记

1.界面基本结构和布局容器
Scaffold->appBar|body|floatingActionButton
appbar->title
body->Center->child->Row/column/stack/container->widget
布局容器理解:
row column 对应线性布局
stack 对应帧布局/相对布局
container 可以设置边框 内边距、阴影,还有约束条件  像是cardView+constraintLayout


2、抓包
默认情况下，在Flutter中使用Dio进行网络请求时是不支持抓包的，所以如果要进行抓包，就需要对Dio进行请求封装，并编写代理代码。
或者另外的处理方式：
参考：https://www.jianshu.com/p/0173d5939764
Android Studio 中，找到 Flutter Performance (View > Tool Windows > Flutter Performance)


3、debug很慢很卡顿
解决方案：更新SDK Platform-Tools 套件
https://www.jianshu.com/p/aab148596ce1

4.布局相关
 Container 是一个 widget，允许你自定义其子 widget，并且设置padding等参数，行、列都可以融于其中
 引用本地资源：需要在pubspec.yaml中声明文件或者文件夹，注意缩进位置（yaml很严格）
 图片引用：Image.asset(filepath+完整后缀图片名)
 布局太大超出屏幕：使用Expanded包裹widget


5、传统线性布局，Column中  children 包含listview  listview不显示  ，
会报错Unhandled Exception: Vertical viewport was given unbounded height.
需要把listview 用 Expanded包裹起来 或者其他方式


FXCircleAvatar 头像
Container-decoration-BoxDecoration-boxShadow  背景shape
SvgPicture 本地矢量图
间距可以用SizeBox设置
SizedBox(width: 10.wDp,child: const ColoredBox(color: FXColors.Gray_Divider),),  带颜色间距的
BorderRadius.all(Radius.circular(10.wDp));
Expanded flex 设置权重 weight   在行货列里面

pow(10,3) 10的3次方，还有其他的数学运算直接可以调用

Container  alignment  定义child位置

Null Function   dynamicFunction
只有windows下出现的问题：热重载始终运行的旧代码的时候，需要把类中的文件进行修改再热重载才生效
有时候改一行代码不会生效 必须改变行数  比如在print文案修改的时候就不会生效
