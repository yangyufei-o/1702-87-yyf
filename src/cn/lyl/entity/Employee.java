package cn.lyl.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/*
 * 员工常规信息数据表
 * Employee
 */
@Component(value="employee")
public class Employee {
	private Integer e_id;//序号
	private String e_name;//员工姓名
	private String e_code;//员工编码
	private String e_birth;//出生日期
	private String e_sex;//性别
	private String e_job;//职务
	private String e_post;//员工岗位
	private String e_jobfunctions;//技术职称
	private String e_tel;//联系电话
	private String e_phone;//家庭电话
	private String e_address;//家庭住址
	private String e_qq;//员工qq
	private String e_mail;//电子邮箱
	private String e_start;//入职时间
	private String e_end;//离职时间
	private String e_status;//员工状态
	private String e_duty;//工作职责
	
	private String e_extend1;//扩展字段
	private String e_extend2;//扩展字段
	private String e_extend3;//扩展字段
	private String e_extend4;//扩展字段
	private String e_extend5;//员工密码
	
	//在员工实体类里面表示所属部门，一个员工只能属于一个部门
	private Department department;
	
	//在员工实体类里面表示多个客户 一个员工有多个客户
	private Set<Customer> setCustomer=new HashSet<Customer>();
	
	//在员工实体类里面表示多个工作任务，一个员工有多个工作任务
	private Set<WorkTask> setWorkTask = new HashSet<WorkTask>();

	//在员工实体类里面表示多个工作计划，一个员工有多个工作计划
	private Set<WorkPlane> setWorkPlane = new HashSet<WorkPlane>();
	
	//在员工实体类里面表示多个工作总结，一个员工有多个工作总结
	private Set<WorkSummary> setWorkSummary = new HashSet<WorkSummary>();
	
	//在员工实体类里面表示多个工作日志，一个员工有多个工作日志
	private Set<Worklog> setWorklog = new HashSet<Worklog>();
	
	//在员工实体类里面表示一个基本信息，一个员工有一个基本信息
	private Set<Embasicinfo> setEmbasicinfo = new HashSet<Embasicinfo>();
	
	//在员工实体类里面表示一个工作经历，一个员工可以有多个工作经历
	private Set<Emworkepr> setEmworkepr = new HashSet<Emworkepr>();
	public Integer getE_id() {
		return e_id;
	}
	public void setE_id(Integer e_id) {
		this.e_id = e_id;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public String getE_code() {
		return e_code;
	}
	public void setE_code(String e_code) {
		this.e_code = e_code;
	}
	public String getE_birth() {
		return e_birth;
	}
	public void setE_birth(String e_birth) {
		this.e_birth = e_birth;
	}
	public String getE_sex() {
		return e_sex;
	}
	public void setE_sex(String e_sex) {
		this.e_sex = e_sex;
	}
	public String getE_job() {
		return e_job;
	}
	public void setE_job(String e_job) {
		this.e_job = e_job;
	}
	public String getE_post() {
		return e_post;
	}
	public void setE_post(String e_post) {
		this.e_post = e_post;
	}
	public String getE_jobfunctions() {
		return e_jobfunctions;
	}
	public void setE_jobfunctions(String e_jobfunctions) {
		this.e_jobfunctions = e_jobfunctions;
	}
	public String getE_tel() {
		return e_tel;
	}
	public void setE_tel(String e_tel) {
		this.e_tel = e_tel;
	}
	public String getE_phone() {
		return e_phone;
	}
	public void setE_phone(String e_phone) {
		this.e_phone = e_phone;
	}
	public String getE_address() {
		return e_address;
	}
	public void setE_address(String e_address) {
		this.e_address = e_address;
	}
	public String getE_qq() {
		return e_qq;
	}
	public void setE_qq(String e_qq) {
		this.e_qq = e_qq;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}
	public String getE_start() {
		return e_start;
	}
	public void setE_start(String e_start) {
		this.e_start = e_start;
	}
	public String getE_end() {
		return e_end;
	}
	public void setE_end(String e_end) {
		this.e_end = e_end;
	}
	public String getE_status() {
		return e_status;
	}
	public void setE_status(String e_status) {
		this.e_status = e_status;
	}
	public String getE_duty() {
		return e_duty;
	}
	public void setE_duty(String e_duty) {
		this.e_duty = e_duty;
	}
	public String getE_extend1() {
		return e_extend1;
	}
	public void setE_extend1(String e_extend1) {
		this.e_extend1 = e_extend1;
	}
	public String getE_extend2() {
		return e_extend2;
	}
	public void setE_extend2(String e_extend2) {
		this.e_extend2 = e_extend2;
	}
	public String getE_extend3() {
		return e_extend3;
	}
	public void setE_extend3(String e_extend3) {
		this.e_extend3 = e_extend3;
	}
	public String getE_extend4() {
		return e_extend4;
	}
	public void setE_extend4(String e_extend4) {
		this.e_extend4 = e_extend4;
	}
	public String getE_extend5() {
		return e_extend5;
	}
	public void setE_extend5(String e_extend5) {
		this.e_extend5 = e_extend5;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Set<Customer> getSetCustomer() {
		return setCustomer;
	}
	public void setSetCustomer(Set<Customer> setCustomer) {
		this.setCustomer = setCustomer;
	}
	public Set<WorkTask> getSetWorkTask() {
		return setWorkTask;
	}
	public void setSetWorkTask(Set<WorkTask> setWorkTask) {
		this.setWorkTask = setWorkTask;
	}
	public Set<WorkPlane> getSetWorkPlane() {
		return setWorkPlane;
	}
	public void setSetWorkPlane(Set<WorkPlane> setWorkPlane) {
		this.setWorkPlane = setWorkPlane;
	}
	public void setSetWorkSummary(Set<WorkSummary> setWorkSummary) {
		this.setWorkSummary = setWorkSummary;
	}
	public Set<WorkSummary> getSetWorkSummary() {
		return setWorkSummary;
	}
	public Set<Worklog> getSetWorklog() {
		return setWorklog;
	}
	public void setSetWorklog(Set<Worklog> setWorklog) {
		this.setWorklog = setWorklog;
	}
	public Set<Embasicinfo> getSetEmbasicinfo() {
		return setEmbasicinfo;
	}
	public void setSetEmbasicinfo(Set<Embasicinfo> setEmbasicinfo) {
		this.setEmbasicinfo = setEmbasicinfo;
	}
	public Set<Emworkepr> getSetEmworkepr() {
		return setEmworkepr;
	}
	public void setSetEmworkepr(Set<Emworkepr> setEmworkepr) {
		this.setEmworkepr = setEmworkepr;
	}
	
	
	
}
