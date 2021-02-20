package com.GoGreen.server.dao;

import com.GoGreen.server.model.Post;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository("localPostDao")
public class PostDaoLocalRepo implements PostDao
{

    private static final List<Post> DB = new ArrayList<>();

    @Override
    public List<Post> getPosts()
    {
        return DB;
    }

    @Override
    public int createPost(Post post)
    {
        DB.add(post);
        return 0;
    }

    @Override
    public Post getPostByID(int postID)
    {
        for (int i = 0; i < DB.size(); i++)
        {
            if (DB.get(i).getPostID() == postID)
            {
                return DB.get(i);
            }
        }
        return null;
    }

    @Override
    public int deletePostByID(int postID)
    {
        for (int i = 0; i < DB.size(); i++)
        {
            if (DB.get(i).getPostID() == postID)
            {
                DB.remove(i);
                return 0;
            }
        }
        return 1;
    }

    @Override
    public int updatePostByID(int postID, Post post)
    {
        for (int i = 0; i < DB.size(); i++)
        {
            if (DB.get(i).getPostID() == postID)
            {
                DB.remove(i);
                DB.add(i, post);
                return 0;
            }
        }
        return 1;
    }
}
