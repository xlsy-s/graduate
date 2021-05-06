package com.graduate.service;

import com.graduate.dao.ResultDao;
import com.graduate.pojo.SysLogPojo;

public interface LogAopService {


    /**
     * 查询所有
     */
    ResultDao findAll();

    /**
     * 保存
     * @param sysLogPojo
     */
    void saveLog(SysLogPojo sysLogPojo);
}
