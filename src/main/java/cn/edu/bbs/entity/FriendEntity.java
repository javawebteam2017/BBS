package cn.edu.bbs.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

@Entity
@Table(name = "friend", schema = "bbs", catalog = "")
public class FriendEntity {

    private int id;
    private int userId;
    private int friendId;
    private UserEntity userByUserId;
    private UserEntity userByFriendId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "friend_id", nullable = false)
    public int getFriendId() {
        return friendId;
    }

    public void setFriendId(int friendId) {
        this.friendId = friendId;
    }

    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }


    @ManyToOne
    @JoinColumn(name = "friend_id", referencedColumnName = "user_id", nullable = false, insertable = false, updatable = false)
    @JsonBackReference
    public UserEntity getUserByFriendId() {
        return userByFriendId;
    }

    public void setUserByFriendId(UserEntity userByFriendId) {
        this.userByFriendId = userByFriendId;
    }

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", nullable = false, insertable = false, updatable = false)
    @JsonBackReference
    public UserEntity getUserByUserId() {
        return userByUserId;
    }

    public void setUserByUserId(UserEntity userByUserId) {
        this.userByUserId = userByUserId;
    }
}
