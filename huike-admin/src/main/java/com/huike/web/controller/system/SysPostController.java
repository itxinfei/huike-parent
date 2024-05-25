package com.huike.web.controller.system;

import com.huike.clues.domain.SysPost;
import com.huike.clues.service.ISysPostService;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * 岗位信息表(SysPost)表控制层
 *
 * @author makejava
 * @since 2024-05-25 14:12:41
 */
@RestController
@RequestMapping("sysPost")
public class SysPostController {
    /**
     * 服务对象
     */
    @Resource
    private ISysPostService ISysPostService;

    /**
     * 分页查询
     *
     * @param sysPost     筛选条件
     * @param pageRequest 分页对象
     * @return 查询结果
     */
    @GetMapping
    public ResponseEntity<Page<SysPost>> queryByPage(SysPost sysPost, PageRequest pageRequest) {
        return ResponseEntity.ok(this.ISysPostService.queryByPage(sysPost, pageRequest));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public ResponseEntity<SysPost> queryById(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.ISysPostService.queryById(id));
    }

    /**
     * 新增数据
     *
     * @param sysPost 实体
     * @return 新增结果
     */
    @PostMapping
    public ResponseEntity<SysPost> add(SysPost sysPost) {
        return ResponseEntity.ok(this.ISysPostService.insert(sysPost));
    }

    /**
     * 编辑数据
     *
     * @param sysPost 实体
     * @return 编辑结果
     */
    @PutMapping
    public ResponseEntity<SysPost> edit(SysPost sysPost) {
        return ResponseEntity.ok(this.ISysPostService.update(sysPost));
    }

    /**
     * 删除数据
     *
     * @param id 主键
     * @return 删除是否成功
     */
    @DeleteMapping
    public ResponseEntity<Boolean> deleteById(Long id) {
        return ResponseEntity.ok(this.ISysPostService.deleteById(id));
    }

}

