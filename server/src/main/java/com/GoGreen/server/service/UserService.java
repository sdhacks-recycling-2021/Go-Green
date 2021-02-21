package com.GoGreen.server.service;

import com.GoGreen.server.dao.UserDao;
import com.GoGreen.server.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class UserService
{

    private final UserDao userDao;

    @Autowired
    public UserService(@Qualifier("localUserDao") UserDao userDao)
    {
        this.userDao = userDao;
    }

    public User selectPost(int postID)
    {
        return userDao.getUserByID(postID);
    }
}
