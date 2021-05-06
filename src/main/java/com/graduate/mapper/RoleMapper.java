package com.graduate.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    List<String> findById(@Param("id") Integer id);
}
