package DAO;

import Entity.User;

public interface UserDao{
    public User findUser(String userId, String password);
    public int updUserImg(String path, int id);
}
