package cn.lyl.daoImpl;

import org.springframework.stereotype.Repository;

import cn.lyl.dao.IWorkPlaneDao;
import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkPlane;
@Repository(value="workPlaneDaoImpl")
public class WorkPlaneDaoImpl extends UnusualDaoImpl<WorkPlane, Employee> implements IWorkPlaneDao {

	@Override
	public void save(WorkPlane entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(WorkPlane entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void find() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(WorkPlane workPlane) {
		// TODO Auto-generated method stub

	}

}
