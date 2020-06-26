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
		 * ����dao����
		 */
//		dpt = ht.get(Department.class, "xsb");
//		dpt.setD_principal("Ԭ�ο�");
//		dd.update(dpt);
		
		dpt.setD_code("yunshubu");
		dpt.setD_principal("Ԭ�ο�");
		dpt.setD_name("�ɹ���");
		dd.save(dpt);
		
//		dpt = ht.get(Department.class, "xsb");
//		dd.delete(dpt);
	}
	
	@Test
	public void testdao1(){
		
		/*
		 * ����Ա��dao��ӹ���
		 */
//		department = hibernateTemplate.get(Department.class, "cccc");
//		employee.setE_name("�ս���");
//		employee.setE_code("sjp");
//		ed.save(employee, department);

		/*
		 * ����Ա��daoɾ������
		 */
//		employee = ht.get(Employee.class,"bbb");
//		ed.delete(employee);
		
	}

	
	public void add(){
		
		/*
		 * ���Ա�� ���Գɹ�
		 * �ܽ᣺û����ȷ���inverse����
		 */
//		EmployeeDao ed = new EmployeeDao();
//		department = hibernateTemplate.get(Department.class, "cccc");
//		employee.setE_name("������");
//		employee.setE_code("lyl");
		
//		hibernateTemplate.save(employee);
		
		

		/*
		 * ��ӿͻ������Գɹ�
		 * �ܽ᣺����ͻ�ʱû�����ÿͻ�����code������޷�����ɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		customer.setC_name("��Ϊ�������޹�˾");
//		customer.setC_code("HUAWEI");
//		customer.setEmployee(employee);
//		employee.getSetCustomer().add(customer);
//		
//		hibernateTemplate.save(employee);

		/*
		 * �����ϵ�� �����Գɹ�
		 * �ܽᣬ��һ������ʹ�ö���ʱ��û��ʹ��set��������ע�룬���±���ʧ��
		 */
//		customer = hibernateTemplate.get(Customer.class, "HUAWEI");
//		linkMan.setL_name("������");
//		linkMan.setCustomer(customer);
//		customer.getSetLinkMan().add(linkMan);
//		
//		hibernateTemplate.save(customer);
		
		/*
		 * ������� ���Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workTask.setT_theme("�齨AI�����з��Ŷ�");
//		
//		workTask.setEmployee(employee);
//		employee.getSetWorkTask().add(workTask);
//		hibernateTemplate.save(employee);
//		System.out.println(employee);
		
		/*
		 * ��ӹ����ƻ�,���Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workPlane.setP_theme("�ֲ�ʽϵͳ����ѧϰ�ƻ�");
//		workPlane.setEmployee(employee);
//		employee.getSetWorkPlane().add(workPlane);
//		
//		hibernateTemplate.save(employee);

		/*
		 * ��ӹ����ܽ� ,���Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		workSummary.setS_theme("2017�깤���ܽ�");
//		workSummary.setS_detail("�ջ�ܶ࣬ѧ���˺ܶ�֪ʶ");
//		workSummary.setEmployee(employee);
//		
//		employee.getSetWorkSummary().add(workSummary);
//		hibernateTemplate.save(employee);
		
		/*
		 * ��ӹ�����־�����Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		worklog.setL_theme("����Ϧ������Ŀ���걨");
//		worklog.setL_detail("��Ŀ�ֹ���ȷ��������3�·��걨");
//		worklog.setEmployee(employee);
//		employee.getSetWorklog().add(worklog);
//		
//		hibernateTemplate.save(employee);
		
		/*
		 * ���Ա��������Ϣ�����Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		embasicinfo.setE_school("�㶫ʯ�ͻ���ѧԺ");
//		embasicinfo.setE_detail("�㶫ʡï����ï����");
//		embasicinfo.setEmployee(employee);
//		employee.getSetEmbasicinfo().add(embasicinfo);
//		
//		hibernateTemplate.save(employee);
		
		/*
		 * ��ӹ������������Գɹ�
		 */
//		employee = hibernateTemplate.get(Employee.class, "bbb");
//		emworkepr.setE_duty("��Ŀ����");
//		emworkepr.setE_firm("��Ѷ��˾");
//		emworkepr.setEmployee(employee);
//		employee.getSetEmworkepr().add(emworkepr);
//		
//		hibernateTemplate.save(employee);
		
	}
	
}
