package com.finance.service;

import com.finance.common.ServerResponse;
import com.finance.pojo.User;

public interface IUserService {

    ServerResponse<User> login(String username, String password);

    ServerResponse<String> register(User user);

    ServerResponse checkAdminRole(User user);
}
