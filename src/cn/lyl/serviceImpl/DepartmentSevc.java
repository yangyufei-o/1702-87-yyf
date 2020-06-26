package cn.lyl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.DepartmentDaoImpl;
import cn.lyl.entity.Department;
@Transactional
@Service(value="departmentSevc")
public class DepartmentSevc{
	@Autowired
	private DepartmentDaoImpl dptdao;

	public Department find(String arg){
		return dptdao.find(arg);
	}
	public List<Department> findall(){
		return dptdao.findAll();
	}
	
	public List<Department> findBy(String arg){
		return dptdao.findBy(arg);
	}

	public void saveAndUpdate(Department arg){
		dptdao.saveAndUpdate(arg);
	}
	public void delete(Department department) {
		dptdao.delete(department);
	}
}
