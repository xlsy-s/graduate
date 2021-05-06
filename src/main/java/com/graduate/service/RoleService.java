package com.graduate.service;

import java.util.List;

/**
 * 权限的服务层
 */
public interface RoleService {
    /**
     * 通过id去查找权限
     * @param id
     * @return
     */
    List<String> findById(Integer id);
}
