package com.graduate.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * 权限实体类
 * 用于指定权限
 */
@Data
public class Power implements Serializable {

  /**
   * id
   */
  private long id;
  /**
   * 权限
   */
  private String power;


}
