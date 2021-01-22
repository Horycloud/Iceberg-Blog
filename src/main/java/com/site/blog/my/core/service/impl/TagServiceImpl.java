package com.site.blog.my.core.service.impl;

import com.site.blog.my.core.dao.BlogTagMapper;
import com.site.blog.my.core.dao.BlogTagRelationMapper;
import com.site.blog.my.core.entity.BlogTag;
import com.site.blog.my.core.entity.BlogTagCount;
import com.site.blog.my.core.entity.BlogTagRelation;
import com.site.blog.my.core.service.TagService;
import com.site.blog.my.core.util.PageQueryUtil;
import com.site.blog.my.core.util.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    private BlogTagMapper blogTagMapper;
    @Autowired
    private BlogTagRelationMapper relationMapper;

    @Override
    public PageResult getBlogTagPage(PageQueryUtil pageUtil) {
        List<BlogTag> tags = blogTagMapper.findTagList(pageUtil);
        int total = blogTagMapper.getTotalTags(pageUtil);
        PageResult pageResult = new PageResult(tags, total, pageUtil.getLimit(), pageUtil.getPage());
        return pageResult;
    }

    @Override
    public int getTotalTags() {
        return blogTagMapper.getTotalTags(null);
    }

    @Override
    public Boolean saveTag(String tagName) {
        BlogTag temp = blogTagMapper.selectByTagName(tagName);
        if (temp == null) {
            BlogTag blogTag = new BlogTag();
            blogTag.setTagName(tagName);
            return blogTagMapper.insertSelective(blogTag) > 0;
        }
        return false;
    }



    @Override
    public Boolean deleteBatch(Integer[] ids) {  // 将接受的参数设置为一个数组，可以同时删除多条记录
        // 判断该标签是否已经与文章表中的数据进行了关联，已存在关联关系不删除
        List<Long> relations = relationMapper.selectDistinctTagIds(ids);
        if (!CollectionUtils.isEmpty(relations)) {  // 不为空说明有关联
            return false;
        }
        // 删除tag
        return blogTagMapper.deleteBatch(ids) > 0;
    }

    @Override
    public List<BlogTagCount> getBlogTagCountForIndex() {
        return blogTagMapper.getTagCount();
    }
}
