package com.site.blog.my.core.controller.vo;
import java.io.Serializable;


/**
 * @Author Hory
 * 此类为最新发布和点击最多构建的新的类，只包含的 blogId 和 blogTitle 属性从 Blog 类中拷贝过来。
 */
public class SimpleBlogListVO implements Serializable {

    private Long blogId;

    private String blogTitle;

    public Long getBlogId() {
        return blogId;
    }

    public void setBlogId(Long blogId) {
        this.blogId = blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }
}
