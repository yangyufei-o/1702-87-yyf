package cn.lyl.daoImpl;

import org.springframework.stereotype.Repository;

import cn.lyl.dao.IEmworkeprDao;
import cn.lyl.entity.Employee;
import cn.lyl.entity.Emworkepr;
@Repository(value="emworkeprDaoImpl")
public class EmworkeprDaoImpl extends UnusualDaoImpl<Emworkepr, Employee> implements IEmworkeprDao {

	@Override
	public void save(Emworkepr entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(Emworkepr entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void find() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Emworkepr emworkepr) {
		// TODO Auto-generated method stub

	}

}
