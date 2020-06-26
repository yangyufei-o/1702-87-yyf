package cn.lyl.dao;

import cn.lyl.entity.Department;

public interface IDepartmentDao extends ICommonDao<Department> {
	public Department find(String arg);
}
