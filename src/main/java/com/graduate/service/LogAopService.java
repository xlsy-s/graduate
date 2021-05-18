package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.SysLogPojo;

public interface LogAopService {


    /**
     * 查询所有
     */
    ResultDao findAll(Integer pageNum,Integer pageSize);

    /**
     * 保存
     * @param sysLogPojo
     */
    void saveLog(SysLogPojo sysLogPojo);
}
