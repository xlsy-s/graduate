package com.graduate.dao;

import lombok.Data;

import java.io.Serializable;

/**
 * 数据传输
 */
@Data
public class ResultDao implements Serializable {
    // 状态码
    private Integer code;
    // 信息
    private String msg;
    // 数据
    private Object data;

    /**
     * 空参构造
     */
    public ResultDao() {
    }

    /**
     * 没有返回数据时使用
     * @param code
     * @param msg
     */
    public ResultDao(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    /**
     * 有返回数据时使用
     * @param code
     * @param msg
     * @param data
     */
    public ResultDao(Integer code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

}
