package cn.lyl.daoImpl;

import org.springframework.stereotype.Repository;

import cn.lyl.dao.IEmbasicinfoDao;
import cn.lyl.entity.Embasicinfo;
import cn.lyl.entity.Employee;
@Repository(value="embasicinfoDaoImpl")
public class EmbasicinfoDaoImpl extends UnusualDaoImpl<Embasicinfo, Employee> implements IEmbasicinfoDao {

	@Override
	public void save(Embasicinfo entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Embasicinfo entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void find() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Embasicinfo embasicinfo) {
		// TODO Auto-generated method stub

	}

}
