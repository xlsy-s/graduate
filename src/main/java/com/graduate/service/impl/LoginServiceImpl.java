package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;

@Service
@Transactional // 事务管理
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
    /**
     * 通过用户名查找用户是否存在
     * @return
     */
    @Override
    public ResultDao findByName(Users users, HttpSession session) {
        /**
         * 编写业务层
         */
        Users dbUsers = loginMapper.findByName(users.getUserName());
        // 判断用户名是否存在
        if (dbUsers ==null){
            return new ResultDao(1001,"用户名错误");
        }
        // 判断密码是否一致
        if(!users.getPassWord().equals(dbUsers.getPassWord())){
            return new ResultDao(1002,"密码错误");
        }
        // 设置session值
        session.setAttribute("username",users.getUserName());
        // 判断权限
        if(dbUsers.getPower() == 1){
            return new ResultDao(200,"欢迎您！普通用户"+dbUsers.getUserName(),1);
        }else if(dbUsers.getPower() == 2){
            return new ResultDao(200,"欢迎您!vip用户"+dbUsers.getUserName(),2);
        }
        return new ResultDao(200,"登录成功，欢迎您！管理员",3);
    }
}
