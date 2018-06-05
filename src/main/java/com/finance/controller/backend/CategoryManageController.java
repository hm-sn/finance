package com.finance.controller.backend;

import com.finance.common.ServerResponse;
import com.finance.pojo.Category;
import com.finance.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/manage/category")
public class CategoryManageController {

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping(value = "getAll.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Category>> findAll(){
        return iCategoryService.getAllCategory();
    }

    /**
     * 后台管理中心新闻管理--增加内容
     */
    @RequestMapping(value = "add.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse addItemTitleContent(String title){
        Category category = new Category();
        category.setTitle(title);
        return iCategoryService.addCategory(category);
    }

}
