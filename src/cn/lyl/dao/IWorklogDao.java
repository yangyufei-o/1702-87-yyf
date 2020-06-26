package cn.lyl.dao;

import cn.lyl.entity.Employee;
import cn.lyl.entity.Worklog;

public interface IWorklogDao extends IUnusualDao<Worklog, Employee> {
	public Worklog find(String arg);
	public void delete(Worklog worklog);
}
