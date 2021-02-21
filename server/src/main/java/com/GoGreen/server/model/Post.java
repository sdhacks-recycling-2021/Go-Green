package com.GoGreen.server.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "posts")
public class Post extends BaseEntity
{
    /*
        Insert all properties of any particular post
        Username of poster
        Date posted
        Location posted
        Picture (might exclude if short on time)
     */

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User postingUser;

    @Column(name = "date_posted")
    @NotEmpty
    private long datePosted;    //Time will be milis since epoch

    @Column(name = "location")
    @NotEmpty
    private String location;

//    public Post(@JsonProperty("userID") int userID,
//                @JsonProperty("location") String location)
//    {
//        this.datePosted = System.currentTimeMillis();
//        this.location = location;
//
//    }

    public User getPostingUser()
    {
        return postingUser;
    }

    public long getDatePosted()
    {
        return datePosted;
    }

    public String getLocation()
    {
        return location;
    }

    public int getPostID()
    {
        return super.getId();
    }
}
