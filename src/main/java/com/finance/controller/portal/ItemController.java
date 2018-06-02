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

    private final String pre = "请问";
    private final String next = "的意思是什么";

    private final String pre1 = "帮我找一下";
    private final String next1 = "是什么意思";


    @RequestMapping(value = "selectByKeyWord.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List> selectByKeyWord(String keyWord){
        if(keyWord.contains(pre)&&keyWord.contains(next)){
            keyWord = keyWord.substring(2);
            keyWord =  keyWord.substring(0,keyWord.length()-6);
        }else if(keyWord.contains(pre1)&&keyWord.contains(next1)){
            keyWord = keyWord.substring(5);
            keyWord =  keyWord.substring(0,keyWord.length()-5);
        }
        return iFinanceItemService.findFinanceItemByKeyWord(keyWord);
    }
}
