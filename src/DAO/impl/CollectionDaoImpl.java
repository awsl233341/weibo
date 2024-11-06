package DAO.impl;

import DAO.BaseDao;
import DAO.CollectionDao;

public class CollectionDaoImpl extends BaseDao implements CollectionDao {
    @Override
    public int delCollection(int bid) {
        String sql="delete from collection where bid = ?";
        Object[] ob ={bid};
        int a =exceuteUpd(sql,ob);
        return a;
    }
}
