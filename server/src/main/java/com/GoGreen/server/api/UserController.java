package com.GoGreen.server.api;

import com.GoGreen.server.dao.UserDao;
import com.GoGreen.server.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController
{
    @Autowired
    UserDao userDao;

    @GetMapping
    public List<User> getAllUsers()
    {
        return userDao.findAll();
    }

    @PostMapping
    public User createUser(@Valid @RequestBody User user)
    {
        return userDao.save(user);
    }

    @GetMapping(path = "{id}")
    public User getUserById(@PathVariable(value = "id") Integer userId)
    {
        try
        {
            return userDao.findById(userId)
                    .orElseThrow(() -> new Exception());
        }
        catch (Exception e)
        {
            //Very poor implementation, not good.
            return null;
        }

    }

    @PutMapping(path = "{id}")
    public User updateUser(@PathVariable(value = "id") Integer userId,
                           @Valid @RequestBody User userDetails)
    {
        try
        {
        User user = userDao.findById(userId)
                .orElseThrow(() -> new Exception());

        user.setLocation(userDetails.getLocation());
        user.setEmail(userDetails.getEmail());
        user.setPassword(userDetails.getPassword());
        user.setUsername(userDetails.getUsername());

        User updatedUser = userDao.save(user);
        return user;
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
            User user = userDao.findById(userId)
                    .orElseThrow(() -> new Exception());
            userDao.delete(user);
        }
        catch (Exception e)
        {
            return null;
        }

        return ResponseEntity.ok().build();
    }
}
