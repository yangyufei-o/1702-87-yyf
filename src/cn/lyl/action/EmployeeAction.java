package cn.lyl.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.daoImpl.DataInfoDaoImpl;
import cn.lyl.entity.Department;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.UserRole;
import cn.lyl.serviceImpl.EmployeeSevc;


public class EmployeeAction extends BasicAction implements ModelDriven<Employee>{
	
	@Resource(name="employee")
	private Employee employee;
	@Autowired
	private Department department;

	@Autowired
	private EmployeeSevc es;
	
	private String dpart;
	
	private List<Employee> liste;
	
	private List<Department> listp;//部门
	private List<InfoItem> listj;//职务
	private List<InfoItem> listd;//岗位
	private List<InfoItem> listn;//职称
	private List<UserRole> listu;//角色

	
	private String ecode;
	
	private String keyword;
	
	private String dname;
	
	private String uid;
	@Override
 	public Employee getModel() {
		return employee;
	}
	
	
	/*
	 * 方法开始
	 */
	public String save(){
		es.save(employee, dpart);
		return NONE;
	}
	
	public String reset(){
		listu = es.findRole();
		return "reset";
	}

	
	public String saveNewEmp(){
		es.save(employee, dpart);
		super.getSesion().put("user", employee);
		return "tologin";
	}
	
	public String register(){//新员工注册	
		listp = es.findDepart();
		return "register";
	}
	public String add(){
		listp = es.findDepart();
		listj = es.findItem("1");
		listd = es.findItem("2");
		listn = es.findItem("3");
		return "update";
	}
	public String find(){
		employee = (Employee) super.getSesion().get("user");
		System.out.println(employee.getE_name()+"登录了系统");
		liste = es.findAll();
		return "find";
	}
	public String findby(){
		liste = es.findBy(keyword);
		return "find";
	}
	public String delete(){
		employee = es.find(ecode);
		es.delete(employee);
		return "delete";
	}
	public String chaxun(){
		listp = es.findDepart();
		listj = es.findItem("1");
		listd = es.findItem("2");
		listn = es.findItem("3");
		employee = es.find(ecode);
		dname = employee.getDepartment().getD_name();
		dpart = employee.getDepartment().getD_code();
		return "update";
	}
	

	

	public String getDpart() {
		return dpart;
	}

	public void setDpart(String dpart) {
		this.dpart = dpart;
	}


	public List<Employee> getListe() {
		return liste;
	}

	public void setListe(List<Employee> liste) {
		this.liste = liste;
	}

	public String getEcode() {
		return ecode;
	}

	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public List<Department> getListp() {
		return listp;
	}

	public void setListp(List<Department> listp) {
		this.listp = listp;
	}

	public List<InfoItem> getListj() {
		return listj;
	}

	public void setListj(List<InfoItem> listj) {
		this.listj = listj;
	}

	public List<InfoItem> getListd() {
		return listd;
	}

	public void setListd(List<InfoItem> listd) {
		this.listd = listd;
	}

	public List<InfoItem> getListn() {
		return listn;
	}

	public void setListn(List<InfoItem> listn) {
		this.listn = listn;
	}

	public List<UserRole> getListu() {
		return listu;
	}

	public void setListu(List<UserRole> listu) {
		this.listu = listu;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	
}
