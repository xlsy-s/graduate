package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.ProductMapper;
import com.graduate.pojo.Product;
import com.graduate.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional // 事务管理
public class ProductServiceImpl implements ProductService {
    /**
     * 注入mapper
     */
    @Autowired
    private ProductMapper productMapper;

    /**
     * 查询所有商品的信息
     * @return
     */
    @Override
    public ResultDao findAll() {
        List<Product> dbProduct = productMapper.findAll();
        return new ResultDao(200,"数据获取成功",dbProduct);
    }

    /**
     * 查询所有状态为开启的商品信息
     * @return
     */
    @Override
    public ResultDao findStatus() {
        List<Product> productStatus = productMapper.findStatus();
        return new ResultDao(200,"获取数据成功",productStatus);
    }
}
