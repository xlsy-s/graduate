package com.graduate.mapper;

import com.graduate.pojo.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * 登录的mapper
 */
@Repository
public interface LoginMapper {
    /**
     * 通过会员名查找用户
     * @return
     */
    Users findByName(@Param("username") String username);

    /**
     * 通过电话去查询用户
     * @param phone
     * @return
     */
    Users findByPhone(@Param("phone") String phone);
}
