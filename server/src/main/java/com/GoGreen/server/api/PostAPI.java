package com.GoGreen.server.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.GoGreen.server.service.PostService;

import java.util.List;

import com.GoGreen.server.model.Post;

/**
 * API acts as messenger between front-end and back-end
 */
@RestController
@RequestMapping("/postAPI")
public class PostAPI
{

  private PostService service;

  @Autowired
  public PostAPI (PostService service)
  {
    this.service = service;
  }

  /**
   * Retrieve location variable of a post
   * @return String - the location of the post
   */
  @GetMapping(path = "{id}")
  public String getLocation(@PathVariable("id") int id) {
    return service.selectPost(id).getLocation();
  }

  /**
   * Print all posts in database
   * @return <List>Post all posts in database
   */
  @GetMapping("/postAPI")
  public List<Post> all() {
    return service.getAllPosts();
  }

  /**
   * Add post to 
   * @param post
   * @return
   */
  @PostMapping
  public int addPost(@RequestBody Post post) {
    return service.addPost(post);
  }

  /**
   * Delete this post
   * @param post
   * @return int 0
   */
  @DeleteMapping(path = "{id}")
  public int deletePost(@PathVariable("id") int id) {
    return service.deletePost(id);
  }

  /**
   * Update this post
   * @param post
   * @return int 0
   */
  @PutMapping(path = "{id}")
  public int updatePost(@PathVariable("id") int id, Post post) {
    return service.updatePost(id, post);
  }

}
