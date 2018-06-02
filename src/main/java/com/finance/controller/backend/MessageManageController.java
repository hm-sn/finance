package com.finance.controller.backend;

import com.finance.common.ServerResponse;
import com.finance.service.impl.MessageService;
import com.finance.vo.MessageManagerItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/manage/message")
public class MessageManageController {

    @Autowired
    private MessageService messageService;

    @RequestMapping(value = "getAll.do",method = RequestMethod.GET)
    @ResponseBody
    public ServerResponse<List<MessageManagerItem>> getAll(){
        return messageService.getMessageAll();
    }
}
