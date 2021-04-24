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
  private Integer studentAge;
  private Integer studentGender;
  private Integer studentHeight;
  private Integer studentClassId;
  private Integer studentTeacherId;
  private Integer studentFacultyId;
  //格式化时间
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
  private Date studentTime;


}
