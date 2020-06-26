package cn.lyl.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/*
 * 客户实体
 * Customer
 */
@Component(value="customer")
public class Customer {
	private Integer c_id;//序号
	private String c_rersource;//客户来源
	private String c_name;//客户名称
	private String c_category;//客户类别
	private String c_code;//客户编码
	private String c_shortname;//客户简称
	private String c_industy;//行业类别
	private String c_type;//客户类型
	private String c_region;//所属地区
	private String c_probability;//成交几率
	private String c_status;//客户状态
	private String c_qq;//客户qq

	
	private String c_extend1;//扩展字段
	private String c_extend2;//扩展字段
	private String c_extend3;//扩展字段
	private String c_extend4;//扩展字段
	private String c_extend5;//扩展字段
	
	//在客户实体类里面表示所属员工 一个客户只能属于一个员工
	private Employee employee;
	//在客户实体类里面表示多个联系人，一个客户有多个联系人
	private Set<LinkMan> setLinkMan = new HashSet<LinkMan>();
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
	}
	public String getC_rersource() {
		return c_rersource;
	}
	public void setC_rersource(String c_rersource) {
		this.c_rersource = c_rersource;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_category() {
		return c_category;
	}
	public void setC_category(String c_category) {
		this.c_category = c_category;
	}
	public String getC_code() {
		return c_code;
	}
	public void setC_code(String c_code) {
		this.c_code = c_code;
	}
	public String getC_shortname() {
		return c_shortname;
	}
	public void setC_shortname(String c_shortname) {
		this.c_shortname = c_shortname;
	}
	public String getC_industy() {
		return c_industy;
	}
	public void setC_industy(String c_industy) {
		this.c_industy = c_industy;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getC_region() {
		return c_region;
	}
	public void setC_region(String c_region) {
		this.c_region = c_region;
	}
	public String getC_probability() {
		return c_probability;
	}
	public void setC_probability(String c_probability) {
		this.c_probability = c_probability;
	}
	public String getC_status() {
		return c_status;
	}
	public void setC_status(String c_status) {
		this.c_status = c_status;
	}
	public String getC_qq() {
		return c_qq;
	}
	public void setC_qq(String c_qq) {
		this.c_qq = c_qq;
	}
	public String getC_extend1() {
		return c_extend1;
	}
	public void setC_extend1(String c_extend1) {
		this.c_extend1 = c_extend1;
	}
	public String getC_extend2() {
		return c_extend2;
	}
	public void setC_extend2(String c_extend2) {
		this.c_extend2 = c_extend2;
	}
	public String getC_extend3() {
		return c_extend3;
	}
	public void setC_extend3(String c_extend3) {
		this.c_extend3 = c_extend3;
	}
	public String getC_extend4() {
		return c_extend4;
	}
	public void setC_extend4(String c_extend4) {
		this.c_extend4 = c_extend4;
	}
	public String getC_extend5() {
		return c_extend5;
	}
	public void setC_extend5(String c_extend5) {
		this.c_extend5 = c_extend5;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public Set<LinkMan> getSetLinkMan() {
		return setLinkMan;
	}
	public void setSetLinkMan(Set<LinkMan> setLinkMan) {
		this.setLinkMan = setLinkMan;
	}
	
	
}
