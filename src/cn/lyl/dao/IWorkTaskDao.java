package cn.lyl.dao;

import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkTask;

public interface IWorkTaskDao extends IUnusualDao<WorkTask, Employee> {
	public void find();
	public void delete(WorkTask workTask);
}
