package Service.impl;

import DAO.UserDao;
import DAO.impl.UserDaoImpl;
import Entity.User;
import Service.UserService;

public class UserServiceImpl implements UserService {
    UserDao userDao=new UserDaoImpl();
    @Override
    public User findUser(String userId, String password) {
        User user = null;
        user=userDao.findUser(userId, password);
        return user;
    }

    @Override
    public int updUserImg(User user) {
        int num = userDao.updUserImg(user.getImage(),user.getId());
        return num;
    }
}
