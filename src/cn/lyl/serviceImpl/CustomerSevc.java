package cn.lyl.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.CustomerDaoImpl;
import cn.lyl.daoImpl.EmployeeDaoImpl;
import cn.lyl.daoImpl.InfoItemDaoImpl;
import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
@Transactional
@Service(value="customerServ")
public class CustomerSevc{
	@Autowired
	private InfoItemDaoImpl iidi;
	@Autowired
	private EmployeeDaoImpl edi;
	@Autowired
	private Employee employee;
	@Autowired
	private Customer customer;
	@Autowired
	private CustomerDaoImpl cdi;
	public void save(Customer entity1, String ecode) {
		employee = edi.find(ecode);
		cdi.save(entity1, employee);
	}
	public List<Customer> findAll(){
		return cdi.findAll();
	}
	public List<Customer> findBy(String arg){
		return cdi.findBy(arg);
	}
	public void delete(String arg){
		customer = cdi.find(arg);
		cdi.delete(customer);
	}
	public Customer find(String ccode){
		return cdi.find(ccode);
	}
			
	public List<InfoItem> findItem(String arg){
		return iidi.findAll(arg);
	}
	
	public List<Employee> findEmp(){
		return edi.findAll();
	}
	
	
	
	
	
	
	
	
	
	
}
