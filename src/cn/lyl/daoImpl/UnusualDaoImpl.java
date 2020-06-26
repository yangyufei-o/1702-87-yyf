package cn.lyl.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import cn.lyl.action.BasicAction;
import cn.lyl.dao.IUnusualDao;
import cn.lyl.entity.SystemLog;
@Repository(value="unusualDaoImpl")
public class UnusualDaoImpl<X,Y> implements IUnusualDao<X, Y> {
//	@Autowired
//	public BaseAction ba;
//	@Autowired
//	public SystemLog sl;
	@Autowired
	public HibernateTemplate hbt;
	@Override
	public void save(X entity1, Y entity2) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(X entity1, Y entity2) {
		// TODO Auto-generated method stub
		
	}

}
