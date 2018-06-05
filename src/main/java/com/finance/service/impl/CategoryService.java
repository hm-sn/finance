package com.finance.service.impl;

import com.finance.common.ServerResponse;
import com.finance.dao.CategoryMapper;
import com.finance.pojo.Category;
import com.finance.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iCategoryService")
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public ServerResponse<List<Category>> getAllCategory() {
        List<Category> categories = categoryMapper.selectAll();
        return ServerResponse.createBySuccess(categories);
    }

    @Override
    public ServerResponse addCategory(Category category) {
        categoryMapper.insert(category);
        return ServerResponse.createBySuccess();
    }
}
