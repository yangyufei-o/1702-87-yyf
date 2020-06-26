package cn.lyl.dao;

import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;

public interface ICustomerDao extends IUnusualDao<Customer, Employee> {
	public Customer find(String arg);
	public void delete(Customer customer);
}
