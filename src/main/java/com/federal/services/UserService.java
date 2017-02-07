package com.federal.services;
import com.federal.model.User;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
}
