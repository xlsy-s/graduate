package com.graduate.service;

import com.graduate.dao.ResultDao;

public interface StudentService {
    /**
     * 查询所有学生信息
     * @return
     */
    ResultDao findAll(Integer page,Integer size);
}
