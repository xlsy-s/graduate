package com.graduate.service.impl;

import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
    public Users findByName(String name) {
        /**
         * 编写业务层
         */
        boolean mobile = isMobile(name);
        // 判断用户名是否为电话 是就用电话去数据中查找数据
        if (mobile == true) {
            Users dbUsers = loginMapper.findByPhone(name);
            return dbUsers;
        } else { // 不是则通过用户名去查询
            Users dbUsers = loginMapper.findByName(name);
            return dbUsers;
        }
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
