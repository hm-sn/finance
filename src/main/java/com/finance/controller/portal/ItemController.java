package com.finance.controller.portal;

import com.finance.common.ServerResponse;
import com.finance.service.IFinanceItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/item/")
public class ItemController {

    @Autowired
    private IFinanceItemService iFinanceItemService;


    @RequestMapping(value = "selectByKeyWord.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List> selectByKeyWord(String keyWord){
        return iFinanceItemService.findFinanceItemByKeyWord(keyWord);
    }
}
