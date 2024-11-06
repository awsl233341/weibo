package Service;

import Entity.User;

public interface UserService {
    public User findUser(String userId, String password);
    public int updUserImg(User user);
}
