package com.finance.controller.portal;

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
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private ICategoryService iCategoryService;

    @RequestMapping(value = "getAll.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<Category>> findAll(){
        return iCategoryService.getAllCategory();
    }

}
