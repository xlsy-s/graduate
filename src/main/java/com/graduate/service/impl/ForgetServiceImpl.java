package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.ForgetMapper;
import com.graduate.mapper.LoginMapper;
import com.graduate.pojo.Users;
import com.graduate.service.ForgetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 忘记密码业务层实现类
 */
@Service
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
        boolean mobile = isMobile(user.getPhone());
        Users dbUser = null;
        if(mobile == true){
            // 通过电话去更改密码
            dbUser = loginMapper.findByPhone(user.getPhone());
        }
        else{
            // 通过用户名去更改密码
            dbUser = loginMapper.findByName(user.getPhone());
        }
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

    /**
     * 判断是在用电话还是用户名
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
