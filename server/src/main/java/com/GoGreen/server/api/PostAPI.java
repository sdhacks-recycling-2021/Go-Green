package com.GoGreen.server.api;

import org.springframework.web.bind.annotation.RestController;

/**
 * API acts as messenger between front-end and back-end
 */
@RestController
@GetMapping("/postAPI")
public class PostAPI
{

  private postService service;
  /**
   * Retrieve location variable of a post
   * @return String - the location of the post
   */
  public String getLocation(int id) {
    /* TODO */
    return service.selectPost(id).getLocation();
  }
}
