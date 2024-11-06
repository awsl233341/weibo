package DAO.impl;

import DAO.BaseDao;
import DAO.LikesDao;

public class LikesDaoImpl extends BaseDao implements LikesDao {
    @Override
    public int delLikes(int bid) {
        String sql="delete from likes where bid = ?";
        Object[] ob ={bid};
        int a =exceuteUpd(sql,ob);
        return a;
    }
}
