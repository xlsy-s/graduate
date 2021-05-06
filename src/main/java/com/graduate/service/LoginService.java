package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;

import javax.servlet.http.HttpSession;

/**
 * 登录业务层
 */
public interface LoginService {
    /**
     *  通过用户名或电话查找用户是否存在 存在登录
     * @param username
     * @return
     */
    Users findByName(String username);
}
