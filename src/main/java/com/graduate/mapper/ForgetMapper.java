package com.graduate.mapper;

import com.graduate.pojo.Users;
import org.apache.ibatis.annotations.Param;

/**
 * 忘记密码
 */
public interface ForgetMapper {

    /**
     * 更新密码
     * @param users
     */
    void updatePassword(@Param("users") Users users);
}
