package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * 员工工作经历实体类
 */
@Component(value="emworkepr")
public class Emworkepr {
	private Integer e_id;//序号
	private String e_start;//开始时间
	private String e_end;//结束时间
	private String e_firm;//工作单位
	private String e_part;//部门
	private String e_job;//职务
	private String e_duty;//职责描述
	
	private String e_extend1;//扩展字段
	private String e_extend2;//扩展字段
	private String e_extend3;//扩展字段
	private String e_extend4;//扩展字段
	private String e_extend5;//扩展字段
	
	//在工作经历里面表示所属员工，一个工作经历只能属于一个员工
	private Employee employee;
	public Integer getE_id() {
		return e_id;
	}
	public void setE_id(Integer e_id) {
		this.e_id = e_id;
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
	public String getE_firm() {
		return e_firm;
	}
	public void setE_firm(String e_firm) {
		this.e_firm = e_firm;
	}
	public String getE_part() {
		return e_part;
	}
	public void setE_part(String e_part) {
		this.e_part = e_part;
	}
	public String getE_job() {
		return e_job;
	}
	public void setE_job(String e_job) {
		this.e_job = e_job;
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
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
}
