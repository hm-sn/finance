package com.finance.pojo;

import java.util.Date;

public class Item {
    private Integer id;

    private String title;

    private String categoryId;

    private String content;

    private Date createTime;

    private Date updateTime;

    public Item(Integer id, String title, String categoryId, String content, Date createTime, Date updateTime) {
        this.id = id;
        this.title = title;
        this.categoryId = categoryId;
        this.content = content;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Item() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId == null ? null : categoryId.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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
}