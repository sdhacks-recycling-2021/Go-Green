package com.GoGreen.server.dao;

import com.GoGreen.server.model.Post;

import java.util.List;

public interface PostDao
{
    List<Post> getPosts();
    int createPost(Post post);
    Post getPostByID(int postID);
    int deletePostByID(int postID);
    int updatePostByID(int postID, Post post);
}
