package cn.lyl.dao;

import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkPlane;

public interface IWorkPlaneDao extends IUnusualDao<WorkPlane, Employee> {
	public void find();
	public void delete(WorkPlane workPlane);
}
