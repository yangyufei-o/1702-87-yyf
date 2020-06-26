package cn.lyl.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/*
 * Ա��������Ϣ���ݱ�
 * Employee
 */
@Component(value="employee")
public class Employee {
	private Integer e_id;//���
	private String e_name;//Ա������
	private String e_code;//Ա������
	private String e_birth;//��������
	private String e_sex;//�Ա�
	private String e_job;//ְ��
	private String e_post;//Ա����λ
	private String e_jobfunctions;//����ְ��
	private String e_tel;//��ϵ�绰
	private String e_phone;//��ͥ�绰
	private String e_address;//��ͥסַ
	private String e_qq;//Ա��qq
	private String e_mail;//��������
	private String e_start;//��ְʱ��
	private String e_end;//��ְʱ��
	private String e_status;//Ա��״̬
	private String e_duty;//����ְ��
	
	private String e_extend1;//��չ�ֶ�
	private String e_extend2;//��չ�ֶ�
	private String e_extend3;//��չ�ֶ�
	private String e_extend4;//��չ�ֶ�
	private String e_extend5;//Ա������
	
	//��Ա��ʵ���������ʾ�������ţ�һ��Ա��ֻ������һ������
	private Department department;
	
	//��Ա��ʵ���������ʾ����ͻ� һ��Ա���ж���ͻ�
	private Set<Customer> setCustomer=new HashSet<Customer>();
	
	//��Ա��ʵ���������ʾ�����������һ��Ա���ж����������
	private Set<WorkTask> setWorkTask = new HashSet<WorkTask>();

	//��Ա��ʵ���������ʾ��������ƻ���һ��Ա���ж�������ƻ�
	private Set<WorkPlane> setWorkPlane = new HashSet<WorkPlane>();
	
	//��Ա��ʵ���������ʾ��������ܽᣬһ��Ա���ж�������ܽ�
	private Set<WorkSummary> setWorkSummary = new HashSet<WorkSummary>();
	
	//��Ա��ʵ���������ʾ���������־��һ��Ա���ж��������־
	private Set<Worklog> setWorklog = new HashSet<Worklog>();
	
	//��Ա��ʵ���������ʾһ��������Ϣ��һ��Ա����һ��������Ϣ
	private Set<Embasicinfo> setEmbasicinfo = new HashSet<Embasicinfo>();
	
	//��Ա��ʵ���������ʾһ������������һ��Ա�������ж����������
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
