package com.huike.clues.mapper;

import com.huike.clues.domain.SysPost;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;

import java.util.List;

/**
 * 岗位信息表(SysPost)表数据库访问层
 *
 * @author makejava
 * @since 2024-05-25 14:12:43
 */
public interface SysPostMapper {

    /**
     * 通过ID查询单条数据
     *
     * @param postId 主键
     * @return 实例对象
     */
    SysPost queryById(Long postId);

    /**
     * 查询指定行数据
     *
     * @param sysPost 查询条件
     * @param pageable         分页对象
     * @return 对象列表
     */
    List<SysPost> queryAllByLimit(SysPost sysPost, @Param("pageable") Pageable pageable);

    /**
     * 统计总行数
     *
     * @param sysPost 查询条件
     * @return 总行数
     */
    long count(SysPost sysPost);

    /**
     * 新增数据
     *
     * @param sysPost 实例对象
     * @return 影响行数
     */
    int insert(SysPost sysPost);

    /**
     * 批量新增数据（MyBatis原生foreach方法）
     *
     * @param entities List<SysPost> 实例对象列表
     * @return 影响行数
     */
    int insertBatch(@Param("entities") List<SysPost> entities);

    /**
     * 批量新增或按主键更新数据（MyBatis原生foreach方法）
     *
     * @param entities List<SysPost> 实例对象列表
     * @return 影响行数
     * @throws org.springframework.jdbc.BadSqlGrammarException 入参是空List的时候会抛SQL语句错误的异常，请自行校验入参
     */
    int insertOrUpdateBatch(@Param("entities") List<SysPost> entities);

    /**
     * 修改数据
     *
     * @param sysPost 实例对象
     * @return 影响行数
     */
    int update(SysPost sysPost);

    /**
     * 通过主键删除数据
     *
     * @param postId 主键
     * @return 影响行数
     */
    int deleteById(Long postId);

}

