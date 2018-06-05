package com.finance.controller.backend;

import com.finance.common.ServerResponse;
import com.finance.pojo.Item;
import com.finance.service.IFinanceItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/manage/item")
public class ItemManageController {

    @Autowired
    private IFinanceItemService iFinanceItemService;

    @RequestMapping(value = "addFinanceItem.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse addFinanceItem(Item item){

        return iFinanceItemService.addFinanceItem(item);
    }

    /**
     * 后台管理中心新闻管理--增加内容
     */
    @RequestMapping(value = "addItemTitleContent.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse addItemTitleContent(String title, String content){
        Item item = new Item();
        item.setTitle(title);
        item.setContent(content);
        item.setCategoryId("1");
        return iFinanceItemService.addFinanceItem(item);
    }


    @RequestMapping(value = "getAll.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse getAll(){
        return iFinanceItemService.getAll();
    }
}
