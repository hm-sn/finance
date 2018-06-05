package com.finance.service;

import com.finance.common.ServerResponse;
import com.finance.pojo.Item;
import org.springframework.stereotype.Service;

@Service("iFinanceItemService")
public interface IFinanceItemService {

    ServerResponse addFinanceItem(Item item);

    ServerResponse getAll();

    ServerResponse findFinanceItemByKeyWord(String keyWord);

    ServerResponse delete(Integer id);
}
