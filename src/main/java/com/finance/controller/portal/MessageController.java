package com.finance.controller.portal;

import com.finance.service.IMessageService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/message/")
public class MessageController {

    private IMessageService iMessageService;


}
