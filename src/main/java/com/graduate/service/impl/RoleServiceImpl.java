package com.graduate.service.impl;

import com.graduate.mapper.RoleMapper;
import com.graduate.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 权限的实现类
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    /**
     * 通过教师id去查询相关权限
     * @param id
     * @return
     */
    @Override
    public List<String> findById(Integer id) {
        return roleMapper.findById(id);
    }
}
