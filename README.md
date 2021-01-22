# Iceberg-Blog

<div align=center><img src="https://tva1.sinaimg.cn/large/008eGmZEly1gmwk5ra4xgj30r80r53za.jpg" width="30%" height="30%"></div>

<div align=center>

[![](https://img.shields.io/badge/JDK-1.8%2B-lightgrey)](https://www.oracle.com/java/technologies/javase-downloads.html)
[![](https://img.shields.io/badge/SpringBoot-2.1.0.RELEASE-brightgreen)](https://spring.io/projects/spring-boot)
[![](https://img.shields.io/badge/MyBatis-1.3.2-orange)](https://mybatis.org/mybatis-3/)
[![](https://img.shields.io/badge/Thymeleaf-3.0.12-success)](https://www.thymeleaf.org/)
</div>



## Why Iceberg Blog

> 为什么叫 Iceberg Blog ？

学无止境，无论何时，我们都会感到知识就像一座冰山，我们学到的只是冰山一角。



## 博客简介

+ `项⽬描述`：采⽤前后端分离架构实现的博客系统，主体架构采用 SpringBoot + Thymeleaf + MyBatis，基于Java环境采用 IntelliJ IDEA 开发，使用 Maven 工具构建。
+ `涉及技术`：Spring Boot、MyBatis、Thymeleaf
+ `设计细节`：整个项⽬分为登录、博客管理、分类管理、标签管理、评论管理、系统配置等多个模块

本博客系统页面优美简介，但是作为个人博客，基本满足大部分需求；

可作为SpringBoot学习学习项目，也可作为个人博客搭建；





## 运行配置

运行 sql 脚本（sql 脚本位于 sql 目录中），修改`application.properties`配置文件中的数据库连接

项目启动成功后本地访问 http://localhost:81/admin/login

默认账号：hory

密码：123456



## 项目地址

目前项目托管在 **Gitee** 和 **Github** 平台上中，欢迎大家 **Star** 和 **Fork** 支持~

- Github地址：https://github.com/Horycloud/Iceberg-Blog



## 主题

### 简介

共有三个主题，位于 `templates/blog` 下：

+ amaze
+ default
+ yummy-jekyll

默认主题为：amaze

### 主题切换

通过修改类实现主题切换

在 `controller/blog/MyBlogController` 中有三个字段：

```java
public static String theme = "default";
public static String theme = "yummy-jekyll";
public static String theme = "amaze";
```

选择其中一个，将其与两个注释即可完成主题的切换。



## 效果预览

### 登录页面

![login](https://tva1.sinaimg.cn/large/008eGmZEly1gmvq52uvxgj31c00u0qbj.jpg)



### 控制面板

![dashboard](https://tva1.sinaimg.cn/large/008eGmZEly1gmvq5z9mexj31c00u0tig.jpg)



### 发布文章

![publish](https://tva1.sinaimg.cn/large/008eGmZEly1gmvq5mzqpij31c00u047i.jpg)



### 博客分类

![categories](https://tva1.sinaimg.cn/large/008eGmZEly1gmvq59sv00j31c00u0dr8.jpg)



### 博客列表

![blogs](https://tva1.sinaimg.cn/large/008eGmZEly1gmvq5f8tddj31c00u0qv8.jpg)





