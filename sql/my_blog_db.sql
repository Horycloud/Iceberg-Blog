-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: my_blog_db
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `generator_test`
--

DROP TABLE IF EXISTS `generator_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generator_test` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `test` varchar(100) NOT NULL COMMENT '测试字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generator_test`
--

LOCK TABLES `generator_test` WRITE;
/*!40000 ALTER TABLE `generator_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `generator_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jdbc_test`
--

DROP TABLE IF EXISTS `jdbc_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jdbc_test` (
  `type` varchar(100) DEFAULT NULL COMMENT '类型',
  `name` varchar(100) DEFAULT NULL COMMENT '名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jdbc_test`
--

LOCK TABLES `jdbc_test` WRITE;
/*!40000 ALTER TABLE `jdbc_test` DISABLE KEYS */;
INSERT INTO `jdbc_test` VALUES ('com.zaxxer.hikari.HikariDataSource','hikari数据源'),('org.apache.commons.dbcp2.BasicDataSource','dbcp2数据源'),('test','测试类'),('类别2','测试类2');
/*!40000 ALTER TABLE `jdbc_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_admin_user`
--

DROP TABLE IF EXISTS `tb_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_admin_user` (
  `admin_user_id` int NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_admin_user`
--

LOCK TABLES `tb_admin_user` WRITE;
/*!40000 ALTER TABLE `tb_admin_user` DISABLE KEYS */;
INSERT INTO `tb_admin_user` VALUES (1,'hory','e10adc3949ba59abbe56e057f20f883e','hory',0);
/*!40000 ALTER TABLE `tb_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog`
--

DROP TABLE IF EXISTS `tb_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_blog` (
  `blog_id` bigint NOT NULL AUTO_INCREMENT COMMENT '博客表主键id',
  `blog_title` varchar(200) NOT NULL COMMENT '博客标题',
  `blog_sub_url` varchar(200) NOT NULL COMMENT '博客自定义路径url',
  `blog_cover_image` varchar(200) NOT NULL COMMENT '博客封面图',
  `blog_content` mediumtext NOT NULL COMMENT '博客内容',
  `blog_category_id` int NOT NULL COMMENT '博客分类id',
  `blog_category_name` varchar(50) NOT NULL COMMENT '博客分类(冗余字段)',
  `blog_tags` varchar(200) NOT NULL COMMENT '博客标签',
  `blog_status` tinyint NOT NULL DEFAULT '0' COMMENT '0-草稿 1-发布',
  `blog_views` bigint NOT NULL DEFAULT '0' COMMENT '阅读量',
  `enable_comment` tinyint NOT NULL DEFAULT '0' COMMENT '0-允许评论 1-不允许评论',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog`
--

LOCK TABLES `tb_blog` WRITE;
/*!40000 ALTER TABLE `tb_blog` DISABLE KEYS */;
INSERT INTO `tb_blog` VALUES (1,'我是Hory','about','http://localhost:81/admin/dist/img/rand/5.jpg','## About me\n\n我是Hory，一名Java开发者\n\n## Contact\n\n- 邮箱：[HoryChang@163.com](https://mail.163.com/)\n- SCDN：[https://blog.csdn.net/weixin_44471490](https://blog.csdn.net/weixin_44471490)\n\n## Quote\n\n- Steve Jobs\n\n> Stay hungry,Stay foolish\n\n- Kahlil Gibran\n\n>The FIRST TIME WHEN I saw her being meek that she might attain height.<br>\nThe SECOND TIME WHEN I saw her limping BEFORE the crippled.<br>\nThe third TIME WHEN she was given TO choose BETWEEN the hard AND the easy, AND she chose the easy.<br>\nThe fourth TIME WHEN she COMMITTED a wrong, AND comforted herself that others also COMMIT wrong.<br>\nThe fifth TIME WHEN she forbore FOR weakness, AND attributed her patience TO strength.<br>\nThe sixth TIME WHEN she despised the ugliness of a face, AND knew NOT that it was ONE of her own masks.<br>\nAND the seventh TIME WHEN she sang a song of praise, AND deemed it a virtue.',20,'About','种一棵树最好的时间是,十年前或现在',1,280,0,0,'2020-03-12 00:31:15','2018-11-12 00:31:15'),(8,'Java 高级特性——反射','','http://localhost:81/admin/dist/img/rand/12.jpg','## 静态语言 & 动态语言\n\n**在讲反射之前先来了解一下什么是静态语言和动态语言**\n\n> 动态语言\n\n是一类在运行时可以改变其结构的语言，例如新的函数、对象、甚至代码都可以被引进，已有的函数可以被删除，或是其他结构上的变化， 通俗地讲就是在运行时代码可以根据某些条件改变自身结构。\n\n主要动态语言：`Object-C、C#、JavaScript、PHP、Python`等。\n\n> 静态语言\n\n与动态语言相对应，运行时结构不可变的语言是静态语言，如`Java、C、C++`。\n\nJava不是动态语言，但Java可以称之为“准动态语言”。即Java有一定的动态性，我们可以利用`反射`机制获得类似动态语言的特性，这可以让Java程序的编写变得更加灵活。\n\n## 反射机制介绍\n\nJAVA 反射机制是在`运行状态`中，对于任意一个类，都能够获取这个类的`所有属性和方法`；对于任意一个对象，都能够调用它的任意一个方法和属性；这种`动态`获取信息以及动态调用对象方法的功能称为 Java 语言的`反射机制`。\n\nReflection 是Java 被视为动态语言的关键，反射机制允许程序在执行期借助于Reflection API取得任何类的内部信息，并能直接操作任意对象的内部属性及方法。\n\n```java\nClass c = Class.forName(\"java.lang.String\")\n```\n\n加载完类之后，在堆内存的`方法区`中就产生了一个Class类型的对象（一个类只有一个Class对象），这个对象就包含了完整的类的结构信息。我们可以通过一个类的Class对象获取该类的结构。这个对象就像一面镜子，透过这个镜子看到类的结构，所以我们形象地称之为：`反射`。\n\n+ `Class`类是理解反射机制的关键，这个后面会重点讲解。\n\n> **一般方式获取一类的对象 vs 通过反射获取一个对象的类信息**\n\n**正常方式**：`import package 包名` -> 通过`new`实例化 -> 取得实例化对象\n\n**反射方式**：实例化对象 -> `getClass()`方法 -> 得到完整的“包类”名称\n\n## Java反射机制提供的功能\n\n> 这些功能可能一时难以理解，但是首先得知道反射能干什么\n\n在运行时 判断任意一个对象所属的类；\n\n在运行时 构造任意一个类的对象；\n\n在运行时 `判断`任意一个`类`所具有的成员变量和方法；\n\n在运行时 `调用`任意一个`对象`的成员变量和方法；\n\n在运行时 获取泛型信息；\n\n在运行时 处理注解；\n\n生成动态代理。\n\n## 为什么要有反射？\n\n[原文](https://blog.csdn.net/qq_40406704/article/details/98060936?utm_source=app)\n\n假如有段代码：`Object o = new Object();`\n\n当JVM启动，代码会编译成一个`.class`文件，然后被类加载器加载到JVM的内存中，类Object加载到方法区中，创建了Object类的Class对象到堆中，注意这个不是new出来的对象，而是类的类型对象，每个类只有一个Class对象，作为方法区类的数据结构的接口。JVM创建对象前，会先检查类是否加载，寻找类对应的Class对象，若加载好，则为对象分配内存，初始化也就是代码：`new Object()`。\n\n为什么要讲这个呢？因为要理解反射必须知道它在什么场景下使用。\n\n上面的程序对象是自己new的，程序相当于写死了给JVM去跑。假如一个服务器上突然遇到某个请求要用到某个类，但没加载进JVM，是不是要停下来自己写段代码，new一下，启动一下服务器。。。\n\n有了反射之后...\n\n当程序在`运行`时，需要动态地加载一些类，这些类可能之前用不到所以不用加载到JVM，而是在运行时根据需要才加载，这样的好处对于服务器来说不言而喻，下面举几个例子来说明反射的作用：\n\n1. 我们的项目底层有时是用MySQL，有时用Oracle，需要动态地根据实际情况加载驱动类，这个时候反射就有用了，假设我们要用`com.java.dbtest.MyqlConnection`以及`com.java.dbtest.OracleConnection`这两个类，这时候我们的程序就写得比较动态化，`Class tc = Class.forName(\"com.java.dbtest.TestConnection\");`通过类的全类名让JVM在服务器中找到并加载这个类，而如果是Oracle则传入的参数就变成另一个了。这时候就可以看到反射的好处了，这个动态性就体现出Java的特性了！\n2. 在Spring中配置各种各样的bean时，是以配置文件的形式配置的，需要用到哪些bean就配哪些，Spring容器就会根据我们的需求去动态加载，我们的程序就能健壮地运行。\n3. Java的反射机制就是增加程序的灵活性，避免将程序写死到代码里， 例如： 实例化一个 Person()对象， 不使用反射就是 new Person(); 如果想变成实例化其他类， 那么必须修改源代码，并重新编译。 使用反射就是 `class.forName(\"Person\").newInstance();` 而且这个类描述可以写到配置文件中，如 `.xml`，这样如果想实例化其他类，只要修改配置文件的`\"类描述\"`就可以了，不需要重新修改代码并编译。\n\n> **下面的话很重要 ！**\n\n**方法区存储的是类的信息，不是类对象，建议看一下JVM内存分配，类加载器加载类是通过方法区上类的信息在堆上创建一个类的Class对象，这个Class对象是唯一的（由JVM保证唯一），之后对这个类的创建都是根据这个Class对象来操作的。**\n\n**可以理解成，某个类存在于方法区中，该类的Class对象存在于堆中，这个Class对象会作为运行时创建该类对象的模版。这个Class对象是唯一对应该类的，要区分所谓的实例和Class对象。为什么需要Class对象，想象一下，如果一个加载进方法区的类，在JVM运行时是动态加载进来的，如果没有这个Class对象，该如何访问一个未知的类并创建对象呢？没错，就是这个Class作为访问接口。**\n\n> **那么什么是Java的反射呢？**\n\n要让Java程序能够运行，那么就得让Java类被Java虚拟机加载。Java类如果不被Java虚拟机加载，是不能正常运行的。现在我们运行的所有的程序都是在编译期的时候就已经知道了所需要的那个类已经被加载了。\n\nJava的反射机制就是，在编译并不确定是哪个类被加载了，而是在程序运行的时候才去加载、探知、自审。使用在编译期并不知道的类，这样的特点就是反射。\n\n\n\n## Java反射优点及缺点\n\n> **优点**\n\n可以实现动态创建对象和编译，具有很大的灵活性。\n\n> **缺点**\n\n对性能有影响。\n\n使用反射基本上是一种`解释操作`，我们可以告诉JVM，希望做什么并且它满足我们的要求。这些操作总是慢于直接执行相同的操作。\n\n\n\n## 反射相关的API\n\n`java.lang.Class` 代表一个类\n\n`java.lang.reflect.Method` 代表类的方法\n\n`java.lang.reflect.Field` 代表类的成员变量\n\n`java.lang.reflect.Construct` 代表类的构造器\n\n\n\n## Class类\n\n> 前言\n\n在Java中一切皆对象，描述任何事物（不管是具体还是抽象），我们都可以用一个类来描述，同样，对于任何一个类，都有相同的特征，比如所有的类一般都包含属性、构造方法、一般方法、该类所继承的接口，该类所实现的接口等等，这些都是这个类所具备的信息，那么如何去描述这些信息，我们就用Class这个类的实例来描述，每个类对应一个Class类的实例。这样，我们可以通过这个实例，将该类复现出来。\n\n> **Class类简介**\n\nClass类是描述类的类。\n\n一个类被加载后，类的整个结构都会被封装在Class对象中。\n\n一个类在内存中只有一个Class对象。\n\n在Object类中定义了下面这个方法 ，此方法将被所有子类继承：\n\n```java\npublic final class getClass()\n```\n\n以上的方法返回值类型是一个Class类，此类是Java反射的源头。\n\n实际上，所谓反射，从程序的运行结果来看也很好理解，即：`可以通过对象反射求出类的名称`。\n\n对象照镜子后可以得到的信息：某个类的属性、方法和构造器、某个类到底实现了哪些接口。\n\n对于每个类，JRE 都为其保留一个不变的Class类型的对象，一个Class对象包含了特定的某个结构（`class/interface/enum/annotation/primitive type/void/[]`）的有关信息。\n\nClass本身也是一个类；\n\nClass对象只能由系统建立；\n\n一个加载的类在JVM中只会有一个Class实例；\n\n一个Class对象对应的是一个加载到JVM中的.class文件；\n\n每个类的实例都会记得自己是由哪个Class实例所生成；\n\n通过Class可以完整地得到一个类中的所有被加载的结构；\n\nClass类是Reflection的根源，针对任何你想动态加载、运行的类，唯有先获得相应的Class对象。\n\n> **Class类常用的方法**\n\n如下表：\n\n| 方法名                                    |                                                             |\n| ----------------------------------------- | ----------------------------------------------------------- |\n| `static ClassforName(String name)`        | 返回指定类名name的Class对象                                 |\n| `Object newInstance()`                    | 调用缺省构造函数，返回Class对象的一个实例                   |\n| `getName()`                               | 返回此Class对象所表示的实体（类、接口、数组类或void）的名称 |\n| `Class getSuperclass()`                   | 返回当前Class 对象的父类的Class对象                         |\n| `Class[] getinterfaces()`                 | 获取当前Class对象的接口                                     |\n| `ClassLoader getClassLoader()`            | 返回该类的类加载器                                          |\n| `Constructor[] getConstructors()`         | 返回一个数组，该数组包含某些Constructor对象                 |\n| `Method getMethod(String name, Class..T)` | 返回一个Method对象，此对象的形参类型为paramType             |\n| `Field[] getDeclaredFields()`             | 返回Field对象的一个数组                                     |\n\n\n\n## 获取 Class 对象的三种方式\n\n当类中方法定义为私有的时候我们能调用吗？不能！当变量是私有的时候我们能获取吗？不能！但是反射可以，比如源码中有你需要用到的方法，但是那个方法是私有的，这个时候你就可以通过反射去执行这个私有方法，并且获取私有变量。\n\n如果我们想动态获取到这些信息，我们需要依靠 Class 对象。Class 类对象将一个类的方法、变量等信息告诉运行的程序。\n\nJava 提供了三种方式获取 Class 对象:\n\n1. **已知具体类，通过`类的class属性`获取，该方法最为安全可靠，程序性能最高:**\n\n```java\nClass clazz1 = Person.class;  \n```\n\n但是我们一般是不知道具体类的，基本都是通过遍历包下面的类来获取 Class 对象。\n\n2. **通过 `Class.forName()`传入类的路径获取：**\n\n```java\nClass clazz2 = Class.forName(\"cn.hory.Person\");\n```\n\n3. **通过`对象实例`获取：**\n\n```java\nClass clazz3 = p.getClass();  // p为Person类的实例\n```\n\n**注意**：以上通过不同方式多次获得一个类的Class对象都是同一个。\n\n> 此外，还有其他方式\n\n1. **基本内置类型的包装类都有一个`TYPE`属性，所以我们可以通过`TYPE`属性获得基本内置类型的Class对象：**\n\n```java\nClass clazz4 = Integer.TYPE;\n```\n\n2. **知道其子类，获取其父类类型：**\n\n```java\nClass clazz5 = c1.getSuperclass();\n```\n\n> **测试1**：\n\n```java\npackage com.hory.testReflect;\n\nimport java.lang.reflect.Field;\nimport java.lang.reflect.InvocationTargetException;\nimport java.lang.reflect.Method;\n\n/**\n * @Author Hory\n * @Date 2020/9/20\n */\npublic class Person {\n    private String name;\n  	private int age;\n\n    public Person() {\n        name = \"Hory\";\n    }\n  \n  	public Person(String name, int age){\n      	this.name = name;\n      	this.age = age;\n    }\n\n    public void publicMethod(String s) {\n        System.out.println(\"public:\" + s);\n    }\n\n    private void privateMethod() {\n        System.out.println(\"name is \" + name);\n    }\n\n    public static void main(String[] args) throws ClassNotFoundException,\n            IllegalAccessException, InstantiationException, NoSuchMethodException,\n            InvocationTargetException, NoSuchFieldException {\n\n        /**\n         * 获取 Person 类的 Class 对象并且创建Person类实例\n         */\n        Class<?> personClass = Class.forName(\"com.hory.testReflect.Person\");\n        Person personObject = (Person) personClass.newInstance(); //本质上是调用了类的无参构造器\n              \n        // 也可以通过构造器创建对象\n        Constructor constructor = personClass.getDeclaredConstructor(String.class, int.class);\n        Person personObject01 = (Person) constructor.newInstance(\"hory\", 25);\n\n        /**\n         * 获取所有类中所有定义的方法\n         */\n        Method[] methods = personClass.getDeclaredMethods();\n        for(Method method : methods) {\n            System.out.println(method.getName());\n        }\n\n        /**\n         * 获取指定方法并调用\n         */\n        Method publicMethod = personClass.getDeclaredMethod(\"publicMethod\", String.class);\n        publicMethod.invoke(personObject,\"this is a public method \");\n\n        /**\n         * 获取指定参数并对参数进行修改\n         */\n        Field field = personClass.getDeclaredField(\"name\");\n        // 不能直接操作私有属性，为了对类中的参数进行修改，需要取消安全检测\n        field.setAccessible(true);\n        field.set(personObject,\"HoryChang\");\n\n        /**\n         * 调用 private 方法\n         */\n        Method privateMethod = personClass.getDeclaredMethod(\"privateMethod\");\n        // 为了调用private方法我们取消安全检查\n        privateMethod.setAccessible(true);\n        privateMethod.invoke(personObject);\n\n    }\n}\n```\n\n输出：\n\n```\npublicMethod\nprivateMethod\nmain\npublic:this is a public method \nname is HoryChang\n```\n\n**注意** : 有读者提到上面代码运行会抛出 `ClassNotFoundException` 异常，具体原因是你没有下面把这段代码的包名替换成自己创建的 `TargetObject` 所在的包 。\n\n```java\nClass<?> personClass = Class.forName(\"com.hory.testReflect.Person\");\n```\n\n**区别**：\n\n|         方法         |                   说明                   |\n| :------------------: | :--------------------------------------: |\n|     `getFields`      |        只能找到`public`属性的方法        |\n| `getDeclaredFields`  |            可以找到全部的属性            |\n|     `getMethods`     | 获得本类及其父类的全部`public`属性的方法 |\n| `getDeclaredMethods` |             获得本类全部方法             |\n\n**setAccessible**：\n\n+ Method、Field、Constructor对象都有`setAccessible()`方法\n+ `setAccessible()`作用是启动或者禁用访问安全检查的开关\n+ 参数为`true`的时候则指示反射的对象在使用时应该取消Java语言访问检查\n	+ 提高反射的效率。如果代码中必须用反射，而该方法需要频繁被调用，那么请设置为`true`\n	+ 是的原本无法访问的私有成员也可以被访问\n+ 参数为`false`则指示反射的对象应该实施Java语言访问检查\n\n\n\n> **测试2：**\n\n```java\npackage testReflect;\n\npublic class Person {\n    private String name;\n    private int age;\n\n    public Person() {\n    }\n\n    public Person(String name, int age) {\n        this.name = name;\n        this.age = age;\n    }\n\n    public static void main(String[] args) throws ClassNotFoundException {\n        Person person = new Person();\n        System.out.println(\"包名: \" + person.getClass().getPackage().getName() );\n        System.out.println(\"完整类名: \" + person.getClass().getName());\n\n        Integer list = new Integer(2);\n        System.out.println(list);\n\n        //java中三种class获取方式\n      \n        //方式一：利用对象调用getClass()方法获取该对象的Class实例\n        Class<? extends Person> personClazz01 = person.getClass();\n      \n        //方式二：使用Class类的静态方法forName()，用类的名字获取一个Class实例\n        Class<?> personClazz02 = Class.forName(\"Person\");\n      \n        //方式三：运用.class的方式来获取Class实例，对于基本数据类型的封装类，\n        // 还可以采用.TYPE来获取相对应的基本数据类型的Class实例\n        Class<? extends Person> personClazz03 = Person.class;\n        Class<? extends Integer> listClazz = Integer.TYPE;\n    }\n}\n```\n\n```java\npackage test;\n\nimport java.lang.reflect.Constructor;\nimport java.lang.reflect.Modifier;\n\npublic class Test {\n    private int age;\n    private String name;\n    private int testint;\n\n    //Test类中我们定义是三个私有变量，生成两个公有的含参构造方法和一个私有的含参构造方法以及一个公有的无参构造方法\n    //下面我们通过反射获取这些构造方法\n    private Test(String name){\n        this.name = name;\n    }\n\n    public Test(int age){\n        this.age = age;\n    }\n    public Test(int age,String name){\n        this.age = age;\n        this.name = name;\n    }\n    public Test(){\n    }\n\n    public static void main(String[] args) {\n//        根据一个字符串得到一个类\n//        String name = \"ZHR\";\n//        Class c1 = name.getClass();\n//        System.out.println(c1);\n\n//        //获取java.lang.String的类名\n//        String name  = \"java.lang.String\";\n//        Class c1 = null;\n//        try{\n//            c1 = Class.forName(name);\n//            System.out.println(c1.getName());\n//        }catch (ClassNotFoundException e){\n//        }\n//        //我们还可以通过c2.getSuperclass()获取到他的父类\n//        Class c2 = null;\n//        try{\n//            c2 = Class.forName(name);\n//            System.out.println(c2.getSuperclass());\n//        }catch (ClassNotFoundException e){\n//        }\n\n        //获取类的所有构造方法\n        Test test = new Test();\n        Class c3 = test.getClass();\n        Constructor[] constructors;\n        constructors = c3.getDeclaredConstructors();\n        //通过 getDeclaredConstructors 可以返回类的所有构造方法，返回的是一个数组,因为构造方法可能不止一个，\n        //通过 getModifiers 可以得到构造方法的类型，\n        //通过 getParameterTypes 可以得到构造方法的所有参数，返回的是一个Class数组，\n        //所以我们如果想获取所有构造方法以及每个构造方法的参数类型，可以有如下代码\n        for(int i=0;i<constructors.length;i++){\n            System.out.print( Modifier.toString(constructors[i].getModifiers()) + \"参数：\");\n            Class[] parametertypes = constructors[i].getParameterTypes();\n            for(int j=0;j<parametertypes.length;j++){\n                System.out.print(parametertypes[j].getName() + \" \");\n            }\n            System.out.println(\"\"); //换行\n        }\n    }\n}\n```\n\n> 有哪些类型可以有Class对象？\n\n`class`：外部类、成员（成员内部类、静态内部类）、局部内部类、匿名内部类\n\n`interface`：接口\n\n`[]`：数组（二维数组也有）\n\n`enum`：枚举\n\n`annotation`：注解@interface\n\n`primitive type`：基本数据类型\n\n`void`\n\n## 反射的原理\n\nJAVA语言编译之后会生成一个.class文件，反射就是通过字节码文件找到某一个类、类中的方法以及属性等。\n\n反射的实现主要借助以下四个类：\n\nClass：类的对象\n\nConstructor：类的构造方法\n\nField：类中的属性对象\n\nMethod：类中的方法对象\n\n## 静态编译 & 动态编译\n\n**静态编译：** 在编译时确定类型，绑定对象\n\n**动态编译：** 运行时确定类型，绑定对象\n\n## 反射机制的优缺点\n\n**优点：** 运行期类型的判断，动态加载类，提高代码灵活度。\n\n**缺点：**\n\n1. 性能瓶颈：反射相当于一系列解释操作，通知 JVM 要做的事情，性能比直接的 Java 代码要慢很多。\n2. 安全问题：让我们可以动态操作改变类的属性同时也增加了类的安全隐患。\n\n## 应用场景\n\n**反射是框架设计的灵魂。**\n\n在我们平时的项目开发过程中，基本上很少会直接使用到反射机制，但这不能说明反射机制没有用，实际上有很多设计、开发都与反射机制有关，例如`模块化的开发，通过反射去调用对应的字节码`；`动态代理设计模式也采用了反射机制`，还有我们日常使用的 `Spring／Hibernate` 等框架也大量使用到了反射机制。\n\n举例：\n\n1. 我们在使用 JDBC 连接数据库时使用 `Class.forName()`通过反射加载数据库的驱动程序；\n2. Spring 框架的 `IOC（动态加载管理 Bean）创建对象`以及 `AOP（动态代理）`功能都和反射有联系；\n3. 动态配置实例的属性；\n4. ......',25,'Java基础','反射',1,1,0,0,'2021-01-21 16:42:30','2021-01-21 16:42:30');
/*!40000 ALTER TABLE `tb_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog_category`
--

DROP TABLE IF EXISTS `tb_blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_blog_category` (
  `category_id` int NOT NULL AUTO_INCREMENT COMMENT '分类表主键',
  `category_name` varchar(50) NOT NULL COMMENT '分类的名称',
  `category_icon` varchar(50) NOT NULL COMMENT '分类的图标',
  `category_rank` int NOT NULL DEFAULT '1' COMMENT '分类的排序值 被使用的越多数值越大',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog_category`
--

LOCK TABLES `tb_blog_category` WRITE;
/*!40000 ALTER TABLE `tb_blog_category` DISABLE KEYS */;
INSERT INTO `tb_blog_category` VALUES (20,'About','/admin/dist/img/category/10.png',21,0,'2018-11-12 00:28:49'),(25,'Java基础','/admin/dist/img/category/00.png',4,0,'2021-01-21 14:49:06'),(26,'Linux','/admin/dist/img/category/13.png',1,0,'2021-01-21 14:50:25'),(27,'MyBatis','/admin/dist/img/category/04.png',1,0,'2021-01-21 14:50:53'),(28,'计算机网络','/admin/dist/img/category/00.png',1,0,'2021-01-21 14:51:35'),(29,'微服务','/admin/dist/img/category/00.png',1,0,'2021-01-21 14:51:47'),(30,'多线程','/admin/dist/img/category/05.png',1,0,'2021-01-21 14:52:02'),(31,'AOP','/admin/dist/img/category/00.png',1,0,'2021-01-21 14:54:04'),(32,'Spring','/admin/dist/img/category/06.png',1,0,'2021-01-21 14:54:33');
/*!40000 ALTER TABLE `tb_blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog_comment`
--

DROP TABLE IF EXISTS `tb_blog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_blog_comment` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `blog_id` bigint NOT NULL DEFAULT '0' COMMENT '关联的blog主键',
  `commentator` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者名称',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论人的邮箱',
  `website_url` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `comment_body` varchar(200) NOT NULL DEFAULT '' COMMENT '评论内容',
  `comment_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论提交时间',
  `commentator_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '评论时的ip地址',
  `reply_body` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `comment_status` tinyint NOT NULL DEFAULT '0' COMMENT '是否审核通过 0-未审核 1-审核通过',
  `is_deleted` tinyint DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog_comment`
--

LOCK TABLES `tb_blog_comment` WRITE;
/*!40000 ALTER TABLE `tb_blog_comment` DISABLE KEYS */;
INSERT INTO `tb_blog_comment` VALUES (27,1,'fshs','HoryChang@163.com','','向着那朝阳','2021-01-15 22:10:13','','加油','2021-01-15 14:12:19',1,0),(28,4,'lasd','377136876@qq.com','','可以','2021-01-15 22:14:06','','讷讷','2021-01-15 14:14:26',1,0);
/*!40000 ALTER TABLE `tb_blog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog_tag`
--

DROP TABLE IF EXISTS `tb_blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_blog_tag` (
  `tag_id` int NOT NULL AUTO_INCREMENT COMMENT '标签表主键id',
  `tag_name` varchar(100) NOT NULL COMMENT '标签名称',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog_tag`
--

LOCK TABLES `tb_blog_tag` WRITE;
/*!40000 ALTER TABLE `tb_blog_tag` DISABLE KEYS */;
INSERT INTO `tb_blog_tag` VALUES (66,'Spring',0,'2018-11-12 10:55:14'),(68,'MyBatis',0,'2018-11-12 10:55:14'),(138,'种一棵树最好的时间是',0,'2021-01-13 21:20:52'),(139,'十年前或现在',0,'2021-01-13 21:20:52'),(140,'反射',0,'2021-01-21 16:42:30');
/*!40000 ALTER TABLE `tb_blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_blog_tag_relation`
--

DROP TABLE IF EXISTS `tb_blog_tag_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_blog_tag_relation` (
  `relation_id` bigint NOT NULL AUTO_INCREMENT COMMENT '关系表id',
  `blog_id` bigint NOT NULL COMMENT '博客id',
  `tag_id` int NOT NULL COMMENT '标签id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_blog_tag_relation`
--

LOCK TABLES `tb_blog_tag_relation` WRITE;
/*!40000 ALTER TABLE `tb_blog_tag_relation` DISABLE KEYS */;
INSERT INTO `tb_blog_tag_relation` VALUES (297,3,66,'2021-01-15 16:33:27'),(298,3,67,'2021-01-15 16:33:27'),(299,3,68,'2021-01-15 16:33:27'),(300,3,69,'2021-01-15 16:33:27'),(301,3,128,'2021-01-15 16:33:27'),(302,2,127,'2021-01-15 16:33:40'),(313,7,138,'2021-01-15 21:37:25'),(314,7,139,'2021-01-15 21:37:25'),(317,4,130,'2021-01-15 21:52:03'),(318,4,131,'2021-01-15 21:52:03'),(319,4,132,'2021-01-15 21:52:03'),(320,4,133,'2021-01-15 21:52:03'),(321,6,134,'2021-01-15 22:15:39'),(322,5,130,'2021-01-15 22:15:50'),(324,1,138,'2021-01-21 16:42:49'),(325,1,139,'2021-01-21 16:42:49'),(327,8,140,'2021-01-21 16:44:21');
/*!40000 ALTER TABLE `tb_blog_tag_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_config`
--

DROP TABLE IF EXISTS `tb_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_config` (
  `config_name` varchar(100) NOT NULL DEFAULT '' COMMENT '配置项的名称',
  `config_value` varchar(200) NOT NULL DEFAULT '' COMMENT '配置项的值',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_config`
--

LOCK TABLES `tb_config` WRITE;
/*!40000 ALTER TABLE `tb_config` DISABLE KEYS */;
INSERT INTO `tb_config` VALUES ('footerAbout','ICEBERG BLOG','2018-11-11 20:33:23','2021-01-15 07:29:02'),('footerCopyRight','2020 Hory','2018-11-11 20:33:31','2021-01-15 07:29:02'),('footerICP','15','2018-11-11 20:33:27','2021-01-15 07:29:02'),('footerPoweredBy','https://github.com/Horycloud','2018-11-11 20:33:36','2021-01-15 07:29:02'),('footerPoweredByURL','https://github.com/Horycloud','2018-11-11 20:33:39','2021-01-15 07:29:02'),('websiteDescription','Iceberg Blog是SpringBoot2+Thymeleaf+Mybatis建造的个人博客网站.SpringBoot实战博客源码.个人博客搭建','2018-11-11 20:33:04','2021-01-13 16:57:41'),('websiteIcon','/admin/dist/img/iceberg.png','2018-11-11 20:33:11','2021-01-13 16:57:41'),('websiteLogo','/admin/dist/img/iceberg.png','2018-11-11 20:33:08','2021-01-13 16:57:41'),('websiteName','ICEBERG BLOG','2018-11-11 20:33:01','2021-01-13 16:57:41'),('yourAvatar','/admin/dist/img/gitHubOlder.jpg','2018-11-11 20:33:14','2021-01-13 16:57:47'),('yourEmail','HoryChang@163.com','2018-11-11 20:33:17','2021-01-13 16:57:47'),('yourName','Hory','2018-11-11 20:33:20','2021-01-13 16:57:47');
/*!40000 ALTER TABLE `tb_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_link`
--

DROP TABLE IF EXISTS `tb_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_link` (
  `link_id` int NOT NULL AUTO_INCREMENT COMMENT '友链表主键id',
  `link_type` tinyint NOT NULL DEFAULT '0' COMMENT '友链类别 0-友链 1-推荐 2-个人网站',
  `link_name` varchar(50) NOT NULL COMMENT '网站名称',
  `link_url` varchar(100) NOT NULL COMMENT '网站链接',
  `link_description` varchar(100) NOT NULL COMMENT '网站描述',
  `link_rank` int NOT NULL DEFAULT '0' COMMENT '用于列表排序',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_link`
--

LOCK TABLES `tb_link` WRITE;
/*!40000 ALTER TABLE `tb_link` DISABLE KEYS */;
INSERT INTO `tb_link` VALUES (2,2,'Hory 的个人博客','https://horycloud.github.io/','这是一个共同交流技术的地方',1,0,'2018-10-22 19:41:04'),(3,2,'Hory 的CSDN','https://blog.csdn.net/weixin_44471490','这是我的CSDN',2,0,'2018-10-22 19:53:34');
/*!40000 ALTER TABLE `tb_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_test`
--

DROP TABLE IF EXISTS `tb_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_test` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `test_info` varchar(50) NOT NULL COMMENT '测试内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_test`
--

LOCK TABLES `tb_test` WRITE;
/*!40000 ALTER TABLE `tb_test` DISABLE KEYS */;
INSERT INTO `tb_test` VALUES (1,'SpringBoot-MyBatis测试');
/*!40000 ALTER TABLE `tb_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 22:10:49
