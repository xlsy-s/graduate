package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;

/**
 * 忘记密码业务层
 */
public interface ForgetService {
    /**
     * 更改密码
     * @param user
     * @return
     */
    ResultDao updatePassword(Users user);
}
