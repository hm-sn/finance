package com.finance.pojo;

import java.util.Date;

public class Rotation {
    private Integer id;

    private String title;

    private String desc;

    private String image;

    private Boolean show;

    private Boolean sort;

    private Date createTime;

    private Date updateTime;

    public Rotation(Integer id, String title, String desc, String image, Boolean show, Boolean sort, Date createTime, Date updateTime) {
        this.id = id;
        this.title = title;
        this.desc = desc;
        this.image = image;
        this.show = show;
        this.sort = sort;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Rotation() {
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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc == null ? null : desc.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Boolean getShow() {
        return show;
    }

    public void setShow(Boolean show) {
        this.show = show;
    }

    public Boolean getSort() {
        return sort;
    }

    public void setSort(Boolean sort) {
        this.sort = sort;
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