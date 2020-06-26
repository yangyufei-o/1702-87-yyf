package cn.lyl.junit;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.DepartmentDaoImpl;
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
@Service(value="testServ")
public class TestServ {
	@Autowired
	Department department;
	@Autowired
	Customer customer;
	@Autowired
	Employee employee;
	@Autowired
	HibernateTemplate ht;
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
	@Autowired
	EmployeeDaoImpl ed;
	@Autowired
	Department dpt;
	@Autowired
	DepartmentDaoImpl dd;
	
	public void testdao3(){
		
	}
	
	
	@Test
	public void testdao(){
		/*
		 * 部门dao操作
		 */
//		dpt = ht.get(Department.class, "xsb");
//		dpt.setD_principal("袁嘉俊");
//		dd.update(dpt);
		
		dpt.setD_code("yunshubu");
		dpt.setD_principal("袁嘉俊");
		dpt.setD_name("采购部");
		dd.save(dpt);
		
//		dpt = ht.get(Department.class, "xsb");
//		dd.delete(dpt);
	}
	
	@Test
	public void testdao1(){
		
		/*
		 * 测试员工dao添加功能
		 */
//		department = hibernateTemplate.get(Department.class, "cccc");
//		employee.setE_name("苏建鹏");
//		employee.setE_code("sjp");
//		ed.save(employee, department);

		/*
		 * 测试员工dao删除功能
		 */
//		employee = ht.get(Employee.class,"bbb");
//		ed.delete(employee);
		
	}

	
	public void add(){
		
		/*
		 * 添加员工 测试成功
		 * 总结：没有正确理解inverse属性
		 */
//		EmployeeDao ed = new EmployeeDao();
//		department = hibernateTemplate.get(Department.class, "cccc");
//		employee.setE_name("李银龙");
//		employee.setE_code("lyl");
		
//		hibernateTemplate.save(employee);
		
		

		/*
		 * 添加客户，测试成功
		 * 总结：保存客户时没有设置客户主键code而造成无法保存成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		customer.setC_name("华为技术有限公司");
//		customer.setC_code("HUAWEI");
//		customer.setEmployee(employee);
//		employee.getSetCustomer().add(customer);
//		
//		hibernateTemplate.save(employee);

		/*
		 * 添加联系人 ，测试成功
		 * 总结，在一个类中使用对象时，没有使用set方法进行注入，导致保存失败
		 */
//		customer = hibernateTemplate.get(Customer.class, "HUAWEI");
//		linkMan.setL_name("任老总");
//		linkMan.setCustomer(customer);
//		customer.getSetLinkMan().add(linkMan);
//		
//		hibernateTemplate.save(customer);
		
		/*
		 * 添加任务 测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workTask.setT_theme("组建AI技术研发团队");
//		
//		workTask.setEmployee(employee);
//		employee.getSetWorkTask().add(workTask);
//		hibernateTemplate.save(employee);
//		System.out.println(employee);
		
		/*
		 * 添加工作计划,测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workPlane.setP_theme("分布式系统开发学习计划");
//		workPlane.setEmployee(employee);
//		employee.getSetWorkPlane().add(workPlane);
//		
//		hibernateTemplate.save(employee);

		/*
		 * 添加工作总结 ,测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workSummary.setS_theme("2017年工作总结");
//		workSummary.setS_detail("收获很多，学到了很多知识");
//		workSummary.setEmployee(employee);
//		
//		employee.getSetWorkSummary().add(workSummary);
//		hibernateTemplate.save(employee);
		
		/*
		 * 添加工作日志，测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		worklog.setL_theme("关于夕阳红项目的申报");
//		worklog.setL_detail("项目分工已确定，将与3月份申报");
//		worklog.setEmployee(employee);
//		employee.getSetWorklog().add(worklog);
//		
//		hibernateTemplate.save(employee);
		
		/*
		 * 添加员工基本信息，测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		embasicinfo.setE_school("广东石油化工学院");
//		embasicinfo.setE_detail("广东省茂名市茂南区");
//		embasicinfo.setEmployee(employee);
//		employee.getSetEmbasicinfo().add(embasicinfo);
//		
//		hibernateTemplate.save(employee);
		
		/*
		 * 添加工作经历，测试成功
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		emworkepr.setE_duty("项目经理");
//		emworkepr.setE_firm("腾讯公司");
//		emworkepr.setEmployee(employee);
//		employee.getSetEmworkepr().add(emworkepr);
//		
//		hibernateTemplate.save(employee);
		
	}
	
}
