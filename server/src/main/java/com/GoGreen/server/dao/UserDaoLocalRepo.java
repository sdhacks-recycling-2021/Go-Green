package com.GoGreen.server.dao;

import com.GoGreen.server.model.Post;
import com.GoGreen.server.model.User;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("localUserDao")
public class UserDaoLocalRepo implements UserDao{

    @Override
    public List<User> getUsers()
    {
        return null;
    }

    @Override
    public int createUser(User user)
    {
        return 0;
    }

    @Override
    public User getUserByID(int userID)
    {
        return null;
    }

    @Override
    public int deleteUserByID(int userID)
    {
        return 0;
    }

    @Override
    public int updateUserByID(int userID)
    {
        return 0;
    }
}
