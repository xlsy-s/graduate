package com.graduate.controller;

import com.graduate.dao.ResultDao;
import com.graduate.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 商品信息的相关操作
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    /**
     * 渲染商品管理页面
     * @return
     */
    @GetMapping("/page")
    public String productPage(){
        return "product/productList";
    }
    /**
     * 商品所有信息
     */
    @GetMapping("/list")
    @ResponseBody // 返回json字符串
    public ResultDao productList(){
        return productService.findAll();
    }

    /**
     * 状态为开启的商品信息
     */
    @GetMapping("/list/page")
    @ResponseBody
    public ResultDao produceStatus(){
        return productService.findStatus();
    }

}
