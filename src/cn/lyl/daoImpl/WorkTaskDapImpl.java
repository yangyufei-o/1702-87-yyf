package cn.lyl.daoImpl;

import org.springframework.stereotype.Repository;

import cn.lyl.dao.IWorkTaskDao;
import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkTask;
@Repository(value="workTaskDapImpl")
public class WorkTaskDapImpl extends UnusualDaoImpl<WorkTask, Employee> implements IWorkTaskDao {

	@Override
	public void save(WorkTask entity1, Employee entity2) {
		entity1.setEmployee(entity2);
		entity2.getSetWorkTask().add(entity1);
		hbt.save(entity2);
	}

	@Override
	public void update(WorkTask entity1, Employee entity2) {
		entity1.setEmployee(entity2);
		entity2.getSetWorkTask().add(entity1);
		hbt.update(entity2);
	}
	
	@Override
	public void find() {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(WorkTask workTask) {
		hbt.delete(workTask);
	}

}





