package Service.impl;

import DAO.FollowDao;
import DAO.impl.FollowDaoImpl;
import Entity.User;
import Service.FollowService;

import java.util.List;

public class FollowServiceImpl implements FollowService {
    FollowDao followDao=new FollowDaoImpl();
    @Override
    public int getFollowedCount(int uid) {
        int a = followDao.getFollowedCount(uid);
        return a;
    }

    @Override
    public int getFanCount(int uid) {
        int a =followDao.getFanCount(uid);
        return a;
    }

    @Override
    public List<User> followedList(int uid) {
        List<User> users = followDao.followedList(uid);
        return users;
    }

    @Override
    public List<User> fanList(int uid) {
        List<User> users = followDao.fanList(uid);
        return users;
    }
}
