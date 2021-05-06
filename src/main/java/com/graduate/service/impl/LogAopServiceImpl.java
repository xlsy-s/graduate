package com.graduate.service.impl;

import com.graduate.dao.ResultDao;
import com.graduate.mapper.LogAopMapper;
import com.graduate.pojo.SysLogPojo;
import com.graduate.service.LogAopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogAopServiceImpl implements LogAopService {
    @Autowired
    private LogAopMapper logAopMapper;

    @Override
    public ResultDao findAll() {
        return new ResultDao(200,"获取成功",logAopMapper.findAll());
    }

    /**
     * 保存
     * @param sysLogPojo
     */
    @Override
    public void saveLog(SysLogPojo sysLogPojo) {
        logAopMapper.saveLog(sysLogPojo);
    }
}
