package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.Users;

import javax.servlet.http.HttpSession;

public interface LoginService {
    ResultDao findByName(Users users, HttpSession session);
}
