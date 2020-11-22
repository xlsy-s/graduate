package com.graduate.pojo;


import com.fasterxml.jackson.annotation.JsonFormat;

import java.sql.Timestamp;

/**
 * 商品的实体类
 */
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


  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }


  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }


  public String getProductName() {
    return productName;
  }

  public void setProductName(String productName) {
    this.productName = productName;
  }


  public String getCityName() {
    return cityName;
  }

  public void setCityName(String cityName) {
    this.cityName = cityName;
  }


  public Timestamp getDepartureTime() {
    return departureTime;
  }

  public void setDepartureTime(Timestamp departureTime) {
    this.departureTime = departureTime;
  }


  public Double getProductPrice() {
    return productPrice;
  }

  public void setProductPrice(Double productPrice) {
    this.productPrice = productPrice;
  }


  public String getProductDesc() {
    return productDesc;
  }

  public void setProductDesc(String productDesc) {
    this.productDesc = productDesc;
  }


  public Integer getProductStatus() {
    return productStatus;
  }

  public void setProductStatus(Integer productStatus) {
    this.productStatus = productStatus;
  }

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
