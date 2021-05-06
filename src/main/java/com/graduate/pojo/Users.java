package com.graduate.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.awt.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * 用户实体类-- 用教师表关联
 * 注意事项 html 标签中的name的值一定要与实体类中的成员变量名相同
 */
@Data
public class Users implements Serializable {
    // id号
    private Integer id;
    // 用户登录名
    private String username;
    // 用户密码
    private String password;
    // 教师id
    private Integer teacherId;

    // 电话
    private String phone;

    // 别名
    private String alias;

    //权限
    private List<String> role;

    // 用户注册时间
    //格式化时间
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
    private Date registerTime;


}
