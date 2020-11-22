package com.graduate.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

/**
 * 用户实体类
 * 注意事项 html 标签中的name的值一定要与实体类中的成员变量名相同
 */
public class Users {
    // id号
    private Integer id;
    // 用户登录名
    private String userName;
    // 用户密码
    private String passWord;
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


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public Integer getPower() {
        return power;
    }

    public void setPower(Integer power) {
        this.power = power;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", power=" + power +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", alias='" + registerTime + '\'' +
                '}';
    }
}
