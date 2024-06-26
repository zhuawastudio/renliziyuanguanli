package com.entity.model;

import com.entity.RenshidiaopeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;


/**
 * 人事调配
 * 接收传参的实体类
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了）
 * 取自ModelAndView 的model名称
 */
public class RenshidiaopeiModel implements Serializable {
    private static final long serialVersionUID = 1L;




    /**
     * 主键
     */
    private Integer id;


    /**
     * 员工
     */
    private Integer yuangongId;


    /**
     * 人事调配名称
     */
    private String renshidiaopeiName;


    /**
     * 调配详情
     */
    private String renshidiaopeiContent;


    /**
     * 调配时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date diaopeiTime;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    private Date createTime;


    /**
	 * 获取：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 设置：主键
	 */
    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 获取：员工
	 */
    public Integer getYuangongId() {
        return yuangongId;
    }


    /**
	 * 设置：员工
	 */
    public void setYuangongId(Integer yuangongId) {
        this.yuangongId = yuangongId;
    }
    /**
	 * 获取：人事调配名称
	 */
    public String getRenshidiaopeiName() {
        return renshidiaopeiName;
    }


    /**
	 * 设置：人事调配名称
	 */
    public void setRenshidiaopeiName(String renshidiaopeiName) {
        this.renshidiaopeiName = renshidiaopeiName;
    }
    /**
	 * 获取：调配详情
	 */
    public String getRenshidiaopeiContent() {
        return renshidiaopeiContent;
    }


    /**
	 * 设置：调配详情
	 */
    public void setRenshidiaopeiContent(String renshidiaopeiContent) {
        this.renshidiaopeiContent = renshidiaopeiContent;
    }
    /**
	 * 获取：调配时间
	 */
    public Date getDiaopeiTime() {
        return diaopeiTime;
    }


    /**
	 * 设置：调配时间
	 */
    public void setDiaopeiTime(Date diaopeiTime) {
        this.diaopeiTime = diaopeiTime;
    }
    /**
	 * 获取：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 设置：添加时间
	 */
    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 获取：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 设置：创建时间
	 */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    }
