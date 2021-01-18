package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

/**
 * 登录业务实现类
 */
@Service
@Transactional // 事务管理
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;

    /**
     * 通过用户名或电话查找用户是否存在
     * 存在登录
     *
     * @return
     */
    @Override
    public ResultDao findByName(Users users, HttpSession session) {
        /**
         * 编写业务层
         */
        // 判断用户名的长度是否为11 是就用电话去数据中查找数据
        if (users.getUsername().length() == 11) {
            Users dbUsers = loginMapper.findByPhone(users.getUsername());
            return info(dbUsers, users, session);
        } else { // 不是则通过用户名去查询
            Users dbUsers = loginMapper.findByName(users.getUsername());
            return info(dbUsers, users, session);
        }
    }

    /**
     * 封装判断方法
     *
     * @param dbUsers
     * @param users
     * @param session
     * @return
     */
    public ResultDao info(Users dbUsers, Users users, HttpSession session) {
        // 判断用户名是否存在
        if (dbUsers == null) {
            return new ResultDao(1001, "用户名错误");
        }
        // 判断密码是否一致
        if (!users.getPassword().equals(dbUsers.getPassword())) {
            return new ResultDao(1002, "密码错误");
        }
        // 判断是否有别名
        if(dbUsers.getAlias() != "" || dbUsers.getAlias() != null){
            session.setAttribute("username",dbUsers.getAlias());
        }
        // 设置session值
        else{
            session.setAttribute("username", dbUsers.getUsername());
        }
        return new ResultDao(200, "登录成功，欢迎您！管理员");
    }
}
