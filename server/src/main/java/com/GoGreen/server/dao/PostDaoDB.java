package com.GoGreen.server.dao;

import com.GoGreen.server.model.Post;

import java.util.List;

public class PostDaoDB implements PostDao
{
    @Override
    public List<Post> getPosts()
    {
        return null;
    }

    @Override
    public int createPost(Post post)
    {
        return 0;
    }

    @Override
    public Post getPostByID(int postID)
    {
        return null;
    }

    @Override
    public int deletePostByID(int postID)
    {
        return 0;
    }

    @Override
    public int updatePostByID(int postID, Post post)
    {
        return 0;
    }
}
