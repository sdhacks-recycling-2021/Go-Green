package com.GoGreen.server.model;

public class Post
{
    /*
        Insert all properties of any particular post
        Username of poster
        Date posted
        Location posted
        Picture (might exclude if short on time)
     */

    private int postID;
    private String username;
    private long datePosted;    //Time will be milis since epoch
    private String location;

    public Post(int postID, String username, long datePosted, String location)
    {
        this.postID = postID;
        this.username = username;
        this.datePosted = datePosted;
        this.location = location;
    }

    public int getPostID()
    {
        return postID;
    }

    public String getUsername()
    {
        return username;
    }

    public long getDatePosted()
    {
        return datePosted;
    }

    public String getLocation()
    {
        return location;
    }
}
