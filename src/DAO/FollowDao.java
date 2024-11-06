package DAO;

import Entity.User;

import java.util.List;

public interface FollowDao {
    public int getFollowedCount(int uid);
    public int getFanCount(int uid);
    public List<User> followedList(int uid);
    public List<User> fanList(int uid);
}
