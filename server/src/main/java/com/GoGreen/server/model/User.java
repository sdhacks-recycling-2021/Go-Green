package com.GoGreen.server.model;

import java.util.List;

public class User
{
    /*
        Insert all data for any particular user
        Username
        Password
        Location
        Associated posts
     */

    private int userID;
    private String username;
    private String password;
    private String location;
    private List<Post> posts;

    public User(int userID, String username, String password, String location, List<Post> posts)
    {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.location = location;
        this.posts = posts;
    }

    public int getUserID()
    {
        return userID;
    }

    public String getUsername()
    {
        return username;
    }

    public String getPassword()
    {
        return password;
    }

    public String getLocation()
    {
        return location;
    }

    public List<Post> getPosts()
    {
        return posts;
    }
}
