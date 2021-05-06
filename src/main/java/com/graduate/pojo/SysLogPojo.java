package com.graduate.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 日志实体类
 */
@Data
public class SysLogPojo implements Serializable {

  private Integer id;
  private Date visitTime;
  private String username;
  private String ip;
  private String url;
  private Long executionTime;
  private String method;


}
