package com.finance.service.impl;

import com.finance.common.ServerResponse;
import com.finance.dao.AnswerMapper;
import com.finance.dao.MessageMapper;
import com.finance.dao.UserMapper;
import com.finance.pojo.Answer;
import com.finance.pojo.Message;
import com.finance.pojo.User;
import com.finance.service.IMessageService;
import com.finance.vo.MessageDetailVo;
import com.finance.vo.MessageManagerItem;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("iMessageService")
public class MessageService implements IMessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private AnswerMapper answerMapper;

    @Autowired
    private UserMapper userMapper;

    @Override
    public ServerResponse<Message> getMessage(Integer id) {
        Message message = messageMapper.selectByPrimaryKey(id);
        return ServerResponse.createBySuccess(message);
    }

    @Override
    public ServerResponse<PageInfo> getMessageList(Integer userId, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Message> messages = messageMapper.selectList(userId);
        PageInfo pageResult = new PageInfo(messages);
        pageResult.setList(messages);
        return ServerResponse.createBySuccess(pageResult);
    }

    @Override
    public ServerResponse answerMessage(Answer answer) {
        if(answer.getContent()!=null){
            answerMapper.insertSelective(answer);
        }
        return ServerResponse.createBySuccess();
    }

    @Override
    public ServerResponse<MessageDetailVo> getMessageDetail(Integer messageId) {
        Message message = messageMapper.selectByPrimaryKey(messageId);
        Answer answer = answerMapper.selectByMessageId(messageId);
        MessageDetailVo messageDetailVo = new MessageDetailVo();
        messageDetailVo.setContent(message.getContent());
        messageDetailVo.setTitle(message.getTitle());
        messageDetailVo.setReply(answer.getContent());
        messageDetailVo.setReplyTime(answer.getCreateTime());
        return ServerResponse.createBySuccess(messageDetailVo);
    }

    @Override
    public ServerResponse<List<MessageManagerItem>> getMessageAll() {
        List<Message> messages = messageMapper.selectAll();
        List<MessageManagerItem> result = new ArrayList<>();
        for(Message m:messages){
            User user = userMapper.selectByPrimaryKey(m.getUserId());
            MessageManagerItem item = new MessageManagerItem();
            item.setId(m.getId());
            item.setContent(m.getContent());
            item.setName(user.getUsername());
            item.setPhone(user.getPhone());
            item.setTime(m.getCreateTime());
            result.add(item);
        }
        return ServerResponse.createBySuccess(result);
    }
}
