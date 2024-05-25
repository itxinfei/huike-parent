package com.huike.clues.service;

import com.huike.clues.domain.SysPost;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

/**
 * 岗位信息表(SysPost)表服务接口
 *
 * @author makejava
 * @since 2024-05-25 14:12:46
 */
public interface ISysPostService {

    /**
     * 通过ID查询单条数据
     *
     * @param postId 主键
     * @return 实例对象
     */
    SysPost queryById(Long postId);

    /**
     * 分页查询
     *
     * @param sysPost 筛选条件
     * @param pageRequest      分页对象
     * @return 查询结果
     */
    Page<SysPost> queryByPage(SysPost sysPost, PageRequest pageRequest);

    /**
     * 新增数据
     *
     * @param sysPost 实例对象
     * @return 实例对象
     */
    SysPost insert(SysPost sysPost);

    /**
     * 修改数据
     *
     * @param sysPost 实例对象
     * @return 实例对象
     */
    SysPost update(SysPost sysPost);

    /**
     * 通过主键删除数据
     *
     * @param postId 主键
     * @return 是否成功
     */
    boolean deleteById(Long postId);

}
