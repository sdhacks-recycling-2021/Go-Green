package com.GoGreen.server.service;

import com.GoGreen.server.dao.PostDao;
import com.GoGreen.server.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostService
{
    private final PostDao postDao;

    @Autowired
    public PostService(@Qualifier("localPostDao") PostDao postDao)
    {
        this.postDao = postDao;
    }

    public List<Post> getAllPosts()
    {
        return postDao.getPosts();
    }

    public int addPost(Post post)
    {
        return postDao.createPost(post);
    }

    public Post selectPost(int postID)
    {
        return postDao.getPostByID(postID);
    }

    public int deletePost(int postID)
    {
        postDao.deletePostByID(postID);
        return 0;
    }

    public int updatePost(int postId, Post post)
    {
        postDao.updatePostByID(postId, post);
        return 0;
    }

}
