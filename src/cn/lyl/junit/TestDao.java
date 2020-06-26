package cn.lyl.junit;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.EmployeeDaoImpl;
import cn.lyl.entity.Customer;
import cn.lyl.entity.Department;
import cn.lyl.entity.Embasicinfo;
import cn.lyl.entity.Employee;
import cn.lyl.entity.Emworkepr;
import cn.lyl.entity.LinkMan;
import cn.lyl.entity.WorkPlane;
import cn.lyl.entity.WorkSummary;
import cn.lyl.entity.WorkTask;
import cn.lyl.entity.Worklog;

@Transactional
public class TestDao {
	@Autowired
	Department department;
	@Autowired
	Customer customer;
	@Autowired
	Employee employee;
	@Autowired
	HibernateTemplate hibernateTemplate;
	@Autowired
	LinkMan linkMan;
	@Autowired
	WorkTask workTask;
	@Autowired
	WorkPlane workPlane;
	@Autowired
	WorkSummary workSummary;
	@Autowired
	Worklog worklog;
	@Autowired
	Embasicinfo embasicinfo;
	@Autowired
	Emworkepr emworkepr;
	
	@Test
	public void Testdao(){
		EmployeeDaoImpl ed = new EmployeeDaoImpl();
		department = hibernateTemplate.get(Department.class, "cccc");
		employee.setE_name("¿Ó“¯¡˙");
		employee.setE_code("lyl");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
