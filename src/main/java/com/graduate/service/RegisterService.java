package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;

public interface RegisterService {
    /**
     * 注册用户方法
     * @param users
     */
    ResultDao save(Users users);
}
