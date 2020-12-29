package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.ForgetMapper;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.ForgetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 忘记密码业务层实现类
 */
@Service
@Transactional
public class ForgetServiceImpl implements ForgetService {

    @Autowired
    private ForgetMapper forgetMapper;
    @Autowired
    private LoginMapper loginMapper;

    /**
     * 更改密码
     * @param user
     * @return
     */
    @Override
    public ResultDao updatePassword(Users user) {
        // 判断用户是否存在
        Users dbUser = loginMapper.findByPhone(user.getPhone());
        if(dbUser==null){
            return new ResultDao(1001,"用户不存在，请检查后在再次输入");
        }
        // 判断新密码是否与旧密码一致
        if(user.getPassword().equals(dbUser.getPassword())){
            return new ResultDao(1002,"新密码与旧密码一致！");
        }
        forgetMapper.updatePassword(user);
        return new ResultDao(200,"更改成功");
    }
}
