package com.graduate.pojo;

import lombok.Data;

import java.io.Serializable;

/**
 * 权限实体类
 * 用于指定权限
 */
@Data
public class RolePower implements Serializable {

  /**
   * id
   */
  private long id;
  /**
   * 权限
   */
  private String role_id;
  /**
   * 权限描述
   */
  private String power;

}
