package com.GoGreen.server.api;

import org.springframework.web.bind.annotation.*;
import com.GoGreen.server.service.PostService;
import com.GoGreen.server.model.Post;

/**
 * API acts as messenger between front-end and back-end
 */
@RestController
@RequestMapping("/postAPI")
public class PostAPI
{

  private PostService service;
  /**
   * Retrieve location variable of a post
   * @return String - the location of the post
   */
  @GetMapping(path = "{id}")
  public String getLocation(int id) {
    return service.selectPost(id).getLocation();
  }

  /**
   * Add post to 
   * @param post
   * @return
   */
  @PostMapping
  public boolean addPost(@RequestBody Post post) {
    service.addPost(post);
    return true;
  }

  private 
}
