package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * 工作计划实体类
 * WorkPlane
 */
@Component(value="workPlane")
public class WorkPlane {
	private Integer p_id;//序号
	private String p_name;//员工姓名
	private String p_part;//员工部门
	private String p_type;//计划类别
	private String p_start;//开始时间
	private String p_end;//结束时间
	private String p_theme;//计划主题
	private String p_detail;//计划内容
	private String p_status;//审批状态
	
	private String p_extend1;//扩展字段
	private String p_extend2;//扩展字段
	private String p_extend3;//扩展字段
	private String p_extend4;//扩展字段
	private String p_extend5;//扩展字段
	
	//在工作计划实体类里面表示所属负责人（员工），一个工作计划只能属于一个负责人（员工）
	private Employee employee;
	public Integer getP_id() {
		return p_id;
	}
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}

	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_part() {
		return p_part;
	}
	public void setP_part(String p_part) {
		this.p_part = p_part;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getP_start() {
		return p_start;
	}
	public void setP_start(String p_start) {
		this.p_start = p_start;
	}
	public String getP_end() {
		return p_end;
	}
	public void setP_end(String p_end) {
		this.p_end = p_end;
	}
	public String getP_theme() {
		return p_theme;
	}
	public void setP_theme(String p_theme) {
		this.p_theme = p_theme;
	}
	public String getP_detail() {
		return p_detail;
	}
	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}
	public String getP_status() {
		return p_status;
	}
	public void setP_status(String p_status) {
		this.p_status = p_status;
	}
	public String getP_extend1() {
		return p_extend1;
	}
	public void setP_extend1(String p_extend1) {
		this.p_extend1 = p_extend1;
	}
	public String getP_extend2() {
		return p_extend2;
	}
	public void setP_extend2(String p_extend2) {
		this.p_extend2 = p_extend2;
	}
	public String getP_extend3() {
		return p_extend3;
	}
	public void setP_extend3(String p_extend3) {
		this.p_extend3 = p_extend3;
	}
	public String getP_extend4() {
		return p_extend4;
	}
	public void setP_extend4(String p_extend4) {
		this.p_extend4 = p_extend4;
	}
	public String getP_extend5() {
		return p_extend5;
	}
	public void setP_extend5(String p_extend5) {
		this.p_extend5 = p_extend5;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
	
}
