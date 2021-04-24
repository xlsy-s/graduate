package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 登录业务实现类
 */
@Service
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
        boolean mobile = isMobile(users.getUsername());
        // 判断用户名是否为电话 是就用电话去数据中查找数据
        if (mobile == true) {
            Users dbUsers = loginMapper.findByPhone(users.getUsername());
            return findInfo(dbUsers, users, session);
        } else { // 不是则通过用户名去查询
            Users dbUsers = loginMapper.findByName(users.getUsername());
            return findInfo(dbUsers, users, session);
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
    public ResultDao findInfo(Users dbUsers, Users users, HttpSession session) {
        // 判断用户名是否存在
        if (dbUsers == null) {
            return new ResultDao(1001, "用户名错误");
        }
        // 判断密码是否一致
        if (!users.getPassword().equals(dbUsers.getPassword())) {
            return new ResultDao(1002, "密码错误");
        }
        // 设置session值 判断是否有别名
        if (dbUsers.getAlias() != "" || dbUsers.getAlias() != null) {
            session.setAttribute("username", dbUsers.getUsername());
            session.setAttribute("alias", dbUsers.getAlias());
        } else {
            session.setAttribute("username", dbUsers.getUsername());
        }
        return new ResultDao(200, "登录成功");
    }

    /**
     * 判断是否是在用电话登录
     * @param username
     * @return
     */
    public boolean isMobile(String username) {
        // 正则判断
        Pattern pattern = Pattern.compile("^[1][3,4,5,8][0-9]{9}$");
        Matcher matcher = pattern.matcher(username);
        return matcher.matches();
    }
}
