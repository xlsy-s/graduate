package com.graduate.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * 教师实体类
 */
@Data
public class Teacher implements Serializable {

    private Long id;
    private String teacherName;
    private Long teacherGender;
    private Long teacherAge;
    private Long teacherHeight;
    private String teacherFaculty;
    private String teacherClass;
    private Integer status;
    private Integer isDelete;


}
