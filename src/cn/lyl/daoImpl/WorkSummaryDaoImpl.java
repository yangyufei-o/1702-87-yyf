package cn.lyl.daoImpl;

import org.springframework.stereotype.Repository;

import cn.lyl.dao.IWorkSummaryDao;
import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkSummary;
@Repository(value="workSummaryDaoImpl")
public class WorkSummaryDaoImpl extends UnusualDaoImpl<WorkSummary, Employee> implements IWorkSummaryDao {

	@Override
	public void save(WorkSummary entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(WorkSummary entity1, Employee entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public void find() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(WorkSummary workSummary) {
		// TODO Auto-generated method stub

	}

}
