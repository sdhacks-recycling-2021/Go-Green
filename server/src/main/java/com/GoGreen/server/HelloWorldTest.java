package com.GoGreen.server;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldTest
{
    @GetMapping("/")
    public String greet() {
        return "The plural of chungus is chungi";
    }
}
