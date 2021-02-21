package com.GoGreen.server.model;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

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
    @NotNull
    private long datePosted;    //Time will be milis since epoch

    @Column(name = "location")
    @NotEmpty
    private String location;

    @Column(name = "num_large_container")
    private int numLargeContainer;

    @Column (name = "num_small_container")
    private int numSmallContainer;

//    public Post(@JsonProperty("userID") int userID,
//                @JsonProperty("location") String location)
//    {
//        this.datePosted = System.currentTimeMillis();
//        this.location = location;
//
//    }

    public void setPostingUser(User postingUser)
    {
        this.postingUser = postingUser;
    }

    public void setDatePosted(long datePosted)
    {
        this.datePosted = datePosted;
    }

    public void setLocation(String location)
    {
        this.location = location;
    }

    public void setNumLargeContainer(int numLargeContainer)
    {
        this.numLargeContainer = numLargeContainer;
    }

    public void setNumSmallContainer(int numSmallContainer)
    {
        this.numSmallContainer = numSmallContainer;
    }

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

    public int getNumLargeContainer()
    {
        return numLargeContainer;
    }

    public int getNumSmallContainer()
    {
        return numSmallContainer;
    }
}
