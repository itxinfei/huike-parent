package com.huike.clues.service.impl;

import com.huike.clues.domain.SysPost;
import com.huike.clues.mapper.SysPostMapper;
import com.huike.clues.service.ISysPostService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 岗位信息表(SysPost)表服务实现类
 *
 * @author makejava
 * @since 2024-05-25 14:12:47
 */
@Service
public class SysPostServiceImpl implements ISysPostService {
    @Resource
    private SysPostMapper sysPostMapper;

    /**
     * 通过ID查询单条数据
     *
     * @param postId 主键
     * @return 实例对象
     */
    @Override
    public SysPost queryById(Long postId) {
        return this.sysPostMapper.queryById(postId);
    }

    /**
     * 分页查询
     *
     * @param sysPost 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    @Override
    public Page<SysPost> queryByPage(SysPost sysPost, PageRequest pageRequest) {
        long total = this.sysPostMapper.count(sysPost);
        return new PageImpl<>(this.sysPostMapper.queryAllByLimit(sysPost, pageRequest), pageRequest, total);
    }

    /**
     * 新增数据
     *
     * @param sysPost 实例对象
     * @return 实例对象
     */
    @Override
    public SysPost insert(SysPost sysPost) {
        this.sysPostMapper.insert(sysPost);
        return sysPost;
    }

    /**
     * 修改数据
     *
     * @param sysPost 实例对象
     * @return 实例对象
     */
    @Override
    public SysPost update(SysPost sysPost) {
        this.sysPostMapper.update(sysPost);
        return this.queryById(sysPost.getPostId());
    }

    /**
     * 通过主键删除数据
     *
     * @param postId 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Long postId) {
        return this.sysPostMapper.deleteById(postId) > 0;
    }
}
