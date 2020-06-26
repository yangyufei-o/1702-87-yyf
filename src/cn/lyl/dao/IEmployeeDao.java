package cn.lyl.dao;

import java.util.List;

import cn.lyl.entity.Department;
import cn.lyl.entity.Employee;

public interface IEmployeeDao extends IUnusualDao<Employee,Department>{
	public Employee find(String arg);
	public void delete(Employee employee);
}
