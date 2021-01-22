package com.site.blog.my.core;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @Author Hory
 */
@MapperScan("com.site.blog.my.core.dao")
@SpringBootApplication
public class IcebergBlogApplication {
    public static void main(String[] args) {
        SpringApplication.run(IcebergBlogApplication.class, args);
    }
}
