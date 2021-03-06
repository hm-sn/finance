package com.finance.service;

import com.finance.common.ServerResponse;
import com.finance.pojo.Answer;
import com.finance.pojo.Message;
import com.finance.vo.MessageDetailVo;
import com.finance.vo.MessageManagerItem;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iMessageService")
public interface IMessageService {

    /**
     * 根据id获取留言具体信息
     * @param id
     * @return
     */
    ServerResponse<Message> getMessage(Integer id);

    /**
     * 获取留言列表
     * @param pageNum
     * @param pageSize
     * @return
     */
    ServerResponse<PageInfo> getMessageList(Integer userId, Integer pageNum, Integer pageSize);

    /**
     * 回答留言
     * @param answer
     * @return
     */
    ServerResponse answerMessage(Answer answer);

    /**
     * 获取消息完整信息
     * @param messageId
     * @return
     */
    ServerResponse<MessageDetailVo> getMessageDetail(Integer messageId);

    /**
     * 插入消息
     * @param message
     * @return
     */
    ServerResponse insert(Message message);


    /**
     * 后台接口，用来展示留言信息
     * @return
     */
    ServerResponse<List<MessageManagerItem>> getMessageAll();


}
