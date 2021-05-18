package com.graduate.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 日志实体类
 */
@Data
public class SysLogPojo implements Serializable {

  private Integer id;
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
  private Date visitTime;
  private String username;
  private String ip;
  private String url;
  private Long executionTime;
  private String method;


}
