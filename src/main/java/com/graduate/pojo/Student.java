package com.graduate.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 学生信息实体类
 */
@Data
public class Student implements Serializable {

  private Long id;
  private String studentName;
  @JsonFormat(pattern = "yyyy-MM-dd",locale = "zh",timezone = "GMT+8")
  private Date studentBirth;
  // 返回前端的时间
  private String studentBirthDay;
  // 前端展示的年龄
  private Integer studentAge;
  // 数据库中存储的性别
  private Integer studentGender;
  // 返回前端展示的数据
  private String studentSex;
  private Integer studentHeight;
  private Integer studentClassId;
  // 数据库中存入的专业id
  private Integer studentProfessionId;
  private Integer studentTeacherId;
  private Integer studentFacultyId;
  //格式化时间
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
  private Date studentTime;
  // 返回前端的时间
  private String studentTimeDay;


}
