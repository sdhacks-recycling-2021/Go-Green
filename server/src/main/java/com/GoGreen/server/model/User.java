package com.GoGreen.server.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import java.util.Set;

@Entity
@Table (name = "users")
public class User extends BaseEntity
{
    /*
        Insert all data for any particular user
        Username
        Password
        Location
        Associated posts
     */

    @Column(name = "username")
    @NotEmpty
    private String username;

    @Column(name = "password")
    @NotEmpty
    private String password;

    @Column
    private String email;

    @Column (name = "location")
    private String location;

    @Column (name = "user_type")
    private String userType;

//    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    private Set<Post> posts;

//    public User(String username, String password, String location, Set<Post> posts)
//    {
//        this.username = username;
//        this.password = password;
//        this.location = location;
//        this.posts = posts;
//    }

    public String getUsername()
    {
        return username;
    }

    public String getPassword()
    {
        return password;
    }

    public String getLocation()
    {
        return location;
    }

    public String getEmail() {return email;}

    public void setUsername(String username)
    {
        this.username = username;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public void setLocation(String location)
    {
        this.location = location;
    }

    public void setUserType(String userType)
    {
        this.userType = userType;
    }


//    public Set<Post> getPosts()
//    {
//        return posts;
//    }
}
