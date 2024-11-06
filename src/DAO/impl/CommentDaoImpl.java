package DAO.impl;

import DAO.BaseDao;
import DAO.CommentDao;

public class CommentDaoImpl extends BaseDao implements CommentDao {

    @Override
    public int delComment(int bid) {
        String sql="delete from comment where bid = ?";
        Object[] ob ={bid};
        int a =exceuteUpd(sql,ob);
        return a;
    }
}
