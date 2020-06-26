package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * 工作总结实体类
 */


@Component(value="workSummary")
public class WorkSummary {
	private Integer s_id;//序号
	private String s_name;//员工姓名
	private String s_code;//员工编码
	private String s_part;//员工部门
	private String s_found;//创建时间
	private String s_type;//总结类别
	private String s_start;//开始时间
	private String s_end;//结束时间
	private String s_theme;//总结主题
	private String s_detail;//总结内容
	private String s_status;//审批状态
	private String s_progress;//完成比
	
	private String s_extend1;//扩展字段
	private String s_extend2;//扩展字段
	private String s_extend3;//扩展字段
	private String s_extend4;//扩展字段
	private String s_extend5;//扩展字段
	
	//在工作总结里面表似所属员工，一个工作总结只能属于一个员工
	private Employee employee;
	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_code() {
		return s_code;
	}
	public void setS_code(String s_code) {
		this.s_code = s_code;
	}
	public String getS_part() {
		return s_part;
	}
	public void setS_part(String s_part) {
		this.s_part = s_part;
	}
	public String getS_found() {
		return s_found;
	}
	public void setS_found(String s_found) {
		this.s_found = s_found;
	}
	public String getS_type() {
		return s_type;
	}
	public void setS_type(String s_type) {
		this.s_type = s_type;
	}
	public String getS_start() {
		return s_start;
	}
	public void setS_start(String s_start) {
		this.s_start = s_start;
	}
	public String getS_end() {
		return s_end;
	}
	public void setS_end(String s_end) {
		this.s_end = s_end;
	}
	public String getS_theme() {
		return s_theme;
	}
	public void setS_theme(String s_theme) {
		this.s_theme = s_theme;
	}
	public String getS_detail() {
		return s_detail;
	}
	public void setS_detail(String s_detail) {
		this.s_detail = s_detail;
	}
	public String getS_status() {
		return s_status;
	}
	public void setS_status(String s_status) {
		this.s_status = s_status;
	}
	public String getS_progress() {
		return s_progress;
	}
	public void setS_progress(String s_progress) {
		this.s_progress = s_progress;
	}
	public String getS_extend1() {
		return s_extend1;
	}
	public void setS_extend1(String s_extend1) {
		this.s_extend1 = s_extend1;
	}
	public String getS_extend2() {
		return s_extend2;
	}
	public void setS_extend2(String s_extend2) {
		this.s_extend2 = s_extend2;
	}
	public String getS_extend3() {
		return s_extend3;
	}
	public void setS_extend3(String s_extend3) {
		this.s_extend3 = s_extend3;
	}
	public String getS_extend4() {
		return s_extend4;
	}
	public void setS_extend4(String s_extend4) {
		this.s_extend4 = s_extend4;
	}
	public String getS_extend5() {
		return s_extend5;
	}
	public void setS_extend5(String s_extend5) {
		this.s_extend5 = s_extend5;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
}
