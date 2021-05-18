package com.graduate.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.graduate.dao.ResultDao;
import com.graduate.mapper.LogAopMapper;
import com.graduate.pojo.SysLogPojo;
import com.graduate.service.LogAopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LogAopServiceImpl implements LogAopService {
    @Autowired
    private LogAopMapper logAopMapper;

    @Override
    public ResultDao findAll(Integer pageNum,Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<SysLogPojo> all = logAopMapper.findAll();
        PageInfo pageInfo = new PageInfo(all);
        return new ResultDao(200,"获取成功",pageInfo);
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
