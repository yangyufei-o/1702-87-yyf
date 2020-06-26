package cn.lyl.daoImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;

import cn.lyl.action.BasicAction;
import cn.lyl.dao.ICommonDao;
import cn.lyl.entity.SystemLog;

public abstract class CommonDaoImpl<T> implements ICommonDao<T> {
	@Autowired
	public HibernateTemplate ht;
//	@Autowired
//	public BaseAction ba;
//	@Autowired
//	public SystemLog sl;
	@Override
	public void save(T entity) {
	}
	@Override
	public void update(T entity) {
	}
}
