package com.finance.pojo;

import java.util.Date;

public class Message {
    private Integer id;

    private String content;

    private Integer userId;

    private Date createTime;

    private Date updateTime;

    private String title;

    public Message(Integer id, String content, Integer userId, Date createTime, Date updateTime, String title) {
        this.id = id;
        this.content = content;
        this.userId = userId;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.title = title;
    }

    public Message() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }
}