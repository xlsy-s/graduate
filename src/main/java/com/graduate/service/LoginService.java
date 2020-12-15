package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;

import javax.servlet.http.HttpSession;

public interface LoginService {
    /**
     *  通过用户名或电话查找用户是否存在 存在登录
     * @param users
     * @param session
     * @return
     */
    ResultDao findByName(Users users, HttpSession session);
}
