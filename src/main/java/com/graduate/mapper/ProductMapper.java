package com.graduate.mapper;

import com.graduate.pojo.Product;

import java.util.List;

/**
 * 查询商品信息的mapper接口
 */
public interface ProductMapper {
    /**
     * 所有商品信息
     * @return
     */
    List<Product> findAll();

    /**
     * 查找所有开启的商品
     * @return
     */
    List<Product> findStatus();
}
