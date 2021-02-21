package com.GoGreen.server.dao;

import com.GoGreen.server.model.User;

import java.util.List;

public interface UserDao
{
    List<User> getUsers();
    int createUser(User user);
    User getUserByID(int userID);
    int deleteUserByID(int userID);
    int updateUserByID(int userID);
}
