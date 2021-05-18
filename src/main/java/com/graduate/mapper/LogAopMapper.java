package com.graduate.mapper;

import com.graduate.pojo.SysLogPojo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 日志的持久层
 */
@Repository
public interface LogAopMapper {

    /**
     * 查看所有日志
     * @return
     */
    List<SysLogPojo> findAll();

    /**
     * 保存日志
     * @param logPojo
     */
    void saveLog(@Param("logPojo") SysLogPojo logPojo);
}
