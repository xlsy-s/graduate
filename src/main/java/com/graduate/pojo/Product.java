package com.graduate.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.sql.Timestamp;

/**
 * 商品的实体类
 */
@Data
public class Product {

  private Integer id;
  private String productId;
  private String productName;
  private String cityName;
  //格式化时间
  @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
  private Timestamp departureTime;
  private Double productPrice;
  private String productDesc;
  private Integer productStatus;

  @Override
  public String toString() {
    return "Product{" +
            "id=" + id +
            ", productId='" + productId + '\'' +
            ", productName='" + productName + '\'' +
            ", cityName='" + cityName + '\'' +
            ", departureTime=" + departureTime +
            ", productPrice=" + productPrice +
            ", productDesc='" + productDesc + '\'' +
            ", productStatus=" + productStatus +
            '}';
  }
}
