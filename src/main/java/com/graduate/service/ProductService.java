package com.graduate.service;


import com.graduate.dao.ResultDao;

public interface ProductService {
    /**
     * 查询所有商品信息
     * @return
     */
    ResultDao findAll();

    /**
     * 查询所有状态为开启的商品状态
     * @return
     */
    ResultDao findStatus();
}
