package com.GoGreen.server.api;

//VERY VERY BAD, copied straight from UserController
//Other, better implementations exist, but time doesn't.

import com.GoGreen.server.dao.PostRepository;
import com.GoGreen.server.model.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/posts")
public class PostController
{
    @Autowired
    PostRepository postRepository;

    @GetMapping
    public List<Post> getAllPosts()
    {
        return postRepository.findAll();
    }

    @PostMapping
    public Post createUser(@Valid @RequestBody Post post)
    {
        return postRepository.save(post);
    }

    @GetMapping(path = "{id}")
    public Post getUserById(@PathVariable(value = "id") Integer postId)
    {
        try
        {
            return postRepository.findById(postId)
                    .orElseThrow(() -> new Exception());
        }
        catch (Exception e)
        {
            //Very poor implementation, not good.
            return null;
        }

    }

    @PutMapping(path = "{id}")
    public Post updateUser(@PathVariable(value = "id") Integer postId,
                           @Valid @RequestBody Post postDetails)
    {
        try
        {
            Post post = postRepository.findById(postId)
                    .orElseThrow(() -> new Exception());

            post.setLocation(postDetails.getLocation());
            post.setDatePosted(postDetails.getDatePosted());
            post.setPostingUser(postDetails.getPostingUser());
            post.setNumLargeContainer(postDetails.getNumLargeContainer());
            post.setNumSmallContainer(postDetails.getNumSmallContainer());

            Post updatedPost = postRepository.save(post);
            return updatedPost;
        }
        catch (Exception e)
        {
            return null;
        }
    }

    @DeleteMapping(path = "{id}")
    public ResponseEntity<?> deleteNote(@PathVariable(value = "id") Integer userId) {
        try
        {
            Post post = postRepository.findById(userId)
                    .orElseThrow(() -> new Exception());
            postRepository.delete(post);
        }
        catch (Exception e)
        {
            return null;
        }

        return ResponseEntity.ok().build();
    }
}
