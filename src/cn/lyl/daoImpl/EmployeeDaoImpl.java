package cn.lyl.daoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.IEmployeeDao;
import cn.lyl.entity.Department;
import cn.lyl.entity.Employee;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;
import cn.lyl.tool.Md5Encrypt;
@Component(value="employeeDaoImpl")
public class EmployeeDaoImpl extends UnusualDaoImpl<Employee,Department> implements IEmployeeDao {
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	private List<Employee> liste;

	@Override
	public void save(Employee employee, Department department) {
//		employee.setE_extend5(Md5Encrypt.to32SaltMD5(employee.getE_extend3()));
		if(LoginAction.operator==null){
			sl.setS_time(sl.time());
			sl.setS_operator("ϵͳ");
			sl.setS_info("����Ա��ע�᣺ ����"+employee.getE_name()+" ��������Ϊ:"+department.getD_name());
			ss.save(sl);
		}else{
			sl.setS_time(sl.time());
			sl.setS_operator(LoginAction.operator);
			sl.setS_info("������:Ա��  "+employee.getE_name()+" ��������Ϊ:"+department.getD_name());
			ss.save(sl);
		}
		if(employee.getE_extend4()==null){
			employee.setE_extend4("1");//����Ա����ɫ��
		}
		employee.setDepartment(department);
		hbt.saveOrUpdate(employee);
	}

	@Override
	public void update(Employee employee, Department department) {
		employee.setDepartment(department);
		department.getSetEmployee().add(employee);
		hbt.update(department);
	}

	public Employee find(String arg){
		return hbt.get(Employee.class, arg);
	}
	public Employee check(String arg1,String arg2){
//		arg2 = Md5Encrypt.to32SaltMD5(arg2);
		liste = (List<Employee>) hbt.find("from Employee where e_name = ? and e_extend5 = ?",arg1,arg2);
		System.out.println(liste);
		if(liste.size()<1){
			return null;
		}else{
			return (Employee)liste.get(0);
		}
	}
	
	public List<Employee> findAll() {
		return (List<Employee>) hbt.find("from Employee");
	}

	public List<Employee> findBy(String arg){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("������:Ա��  �ؼ���Ϊ:"+arg);
		ss.save(sl);
		String keyword = "%"+arg+"%";
		return (List<Employee>) hbt.find("from Employee where e_name like ? or e_code like ? or e_sex like ? or e_job like ? "
				+ "or e_post like ? or e_jobfunctions like ? or e_tel like ? or e_phone like ? "
				+ " or e_address like ? or e_qq like ? or e_mail like ? or e_status like ? or e_duty like ?", 
				keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword);
	}
	
	@Override
	public void delete(Employee employee) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("ɾ����:Ա��  "+employee.getE_name()+" ��������Ϊ:"+employee.getDepartment().getD_name());
		ss.save(sl);
		hbt.delete(employee);
	}

	

}
