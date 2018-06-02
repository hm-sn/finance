package com.finance.service;

import com.finance.common.ServerResponse;
import com.finance.pojo.Category;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iCategoryService")
public interface ICategoryService {

    /**
     * 获取全部分类
     * @return
     */
    ServerResponse<List<Category>> getAllCategory();

    /**
     * 添加分类
     * @param category
     * @return
     */
    ServerResponse addCategory(Category category);
}
