package cn.lyl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.DepartmentDaoImpl;
import cn.lyl.daoImpl.EmployeeDaoImpl;
import cn.lyl.daoImpl.InfoItemDaoImpl;
import cn.lyl.daoImpl.UserRoleDaoImpl;
import cn.lyl.entity.Department;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.UserRole;
@Transactional
@Service(value="employeeSevc")
public class EmployeeSevc{
	private List<Employee> liste;
	@Autowired
	private List<UserRole> listur;
	@Autowired
	private UserRoleDaoImpl urdi;
	@Autowired
	private Department department;
	@Autowired
	private Employee employee;
	@Autowired
	private DepartmentDaoImpl ddi;
	@Autowired
	private EmployeeDaoImpl edi;
	@Autowired
	private InfoItemDaoImpl iidi;
	
	public List<UserRole> findRole(){
		return urdi.findAll();
	}
	
	public void save(Employee entity1, String dpartcode) {	
		department = ddi.find(dpartcode);
		edi.save(entity1, department);
	}
	public List<Employee> findAll(){
		return edi.findAll();
	}
	public void delete(Employee arg){
		edi.delete(arg);
	}
	public Employee find(String arg){
		return edi.find(arg);
	}
	public List<Employee> findBy(String arg){
		return edi.findBy(arg);
	}
	public List<InfoItem> findItem(String arg){
		return (List<InfoItem>) iidi.findAll(arg);
	}
	public List<Department> findDepart(){
		return ddi.findAll();
	}
}
