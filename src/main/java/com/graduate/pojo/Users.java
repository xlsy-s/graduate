package com.graduate.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 用户实体类
 * 注意事项 html 标签中的name的值一定要与实体类中的成员变量名相同
 */
@Data
public class Users {
    // id号
    private Integer id;
    // 用户登录名
    private String username;
    // 用户密码
    private String password;
    // 用户权限
    private Integer power;
    // 用户真实姓名
    private String name;
    // 电话
    private String phone;
    // 用户注册时间
    //格式化时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
    private Date registerTime;
    @Override

    public String toString() {
        return "Users{" +
                "id=" + id +
                ", userName='" + username + '\'' +
                ", passWord='" + password + '\'' +
                ", power=" + power +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", alias='" + registerTime + '\'' +
                '}';
    }
}
