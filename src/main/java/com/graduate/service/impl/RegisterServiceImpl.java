package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.RegisterMapper;
import com.graduate.pojo.Users;
import com.graduate.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private RegisterMapper registerMapper;
    /**
     * 保存
     * @param users
     */
    @Override
    public ResultDao save(Users users) {
        Users dbUser = registerMapper.find(users.getUserName());
        if(dbUser!=null){
            return new ResultDao(1001,"用户以存在，请重新输入用户名");
        }
        registerMapper.save(users);
        return new ResultDao(200,"用户注册成功");
    }
}
