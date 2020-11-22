package com.graduate.mapper;

import com.graduate.pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * 登录的mapper
 */
public interface LoginMapper {
    /**
     * 通过会员名查找用户
     * @return
     */
    Users findByName(@Param("username") String username);
}
