package com.finance.service.impl;

import com.finance.common.ServerResponse;
import com.finance.dao.ItemMapper;
import com.finance.pojo.Item;
import com.finance.service.IFinanceItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("iFinanceItemService")
public class FinanceItemService implements IFinanceItemService {

    @Autowired
    private ItemMapper itemMapper;

    @Override
    public ServerResponse addFinanceItem(Item item) {
        itemMapper.insert(item);
        return ServerResponse.createBySuccess();
    }

    @Override
    public ServerResponse getAll() {
        List<Item> all = itemMapper.getAll();
        return ServerResponse.createBySuccess(all);
    }

    @Override
    public ServerResponse findFinanceItemByKeyWord(String keyWord) {
        List<Item> items = itemMapper.selectItemByKeyword(keyWord);
        return ServerResponse.createBySuccess(keyWord);
    }
}
