package com.finance.controller.portal;

import com.finance.common.Const;
import com.finance.common.ServerResponse;
import com.finance.pojo.Message;
import com.finance.service.IMessageService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/message/")
public class MessageController {

    @Autowired
    private IMessageService iMessageService;

    @RequestMapping(value = "insert.do",method = RequestMethod.POST)
    @ResponseBody
    public ServerResponse<String> insert(Message message){
        message.setUserId(1);
        return iMessageService.insert(message);
    }

    @RequestMapping(value = "list.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<PageInfo> getList(Message message){
        return iMessageService.getMessageList(1,1,10);
    }
}
