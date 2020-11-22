package com.graduate.dao;

/**
 * 数据传输
 */
public class ResultDao{
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

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
