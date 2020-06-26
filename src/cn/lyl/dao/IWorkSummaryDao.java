package cn.lyl.dao;

import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkSummary;

public interface IWorkSummaryDao extends IUnusualDao<WorkSummary, Employee> {
	public void find();
	public void delete(WorkSummary workSummary);
}
