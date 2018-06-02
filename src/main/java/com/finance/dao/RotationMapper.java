package com.finance.dao;

import com.finance.pojo.Rotation;

public interface RotationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Rotation record);

    int insertSelective(Rotation record);

    Rotation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Rotation record);

    int updateByPrimaryKey(Rotation record);
}