package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * 联系人实体类
 * LinkMan
 */

public class LinkMan {
	private Integer l_id;//序号
	private String l_name;//姓名
	private String l_nickname;//昵称
	private String l_code;//助记码
	private String l_sex;//性别
	private String l_birth;//出生日期
	private String l_birthday;//农历生日
	private String l_tel;//手机号码
	private String l_phone;//办公电话
	private String l_address;//办公地址
	private String l_qq;//qq号码
	private String l_mail;//电子邮箱
	private String l_like;//业余爱好
	private String l_duty;//职务
	private String l_job;//负责业务

	private String l_extend1;//扩展字段
	private String l_extend2;//扩展字段
	private String l_extend3;//扩展字段
	private String l_extend4;//扩展字段
	private String l_extend5;//扩展字段
	
	//在联系人里面表示所属客户，一个联系人只能属于一个客户
	private Customer customer;
	public Integer getL_id() {
		return l_id;
	}
	public void setL_id(Integer l_id) {
		this.l_id = l_id;
	}
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getL_nickname() {
		return l_nickname;
	}
	public void setL_nickname(String l_nickname) {
		this.l_nickname = l_nickname;
	}
	public String getL_code() {
		return l_code;
	}
	public void setL_code(String l_code) {
		this.l_code = l_code;
	}
	public String getL_sex() {
		return l_sex;
	}
	public void setL_sex(String l_sex) {
		this.l_sex = l_sex;
	}
	public String getL_birth() {
		return l_birth;
	}
	public void setL_birth(String l_birth) {
		this.l_birth = l_birth;
	}
	public String getL_birthday() {
		return l_birthday;
	}
	public void setL_birthday(String l_birthday) {
		this.l_birthday = l_birthday;
	}
	public String getL_duty() {
		return l_duty;
	}
	public void setL_duty(String l_duty) {
		this.l_duty = l_duty;
	}
	public String getL_tel() {
		return l_tel;
	}
	public void setL_tel(String l_tel) {
		this.l_tel = l_tel;
	}
	public String getL_phone() {
		return l_phone;
	}
	public void setL_phone(String l_phone) {
		this.l_phone = l_phone;
	}
	public String getL_address() {
		return l_address;
	}
	public void setL_address(String l_address) {
		this.l_address = l_address;
	}
	public String getL_qq() {
		return l_qq;
	}
	public void setL_qq(String l_qq) {
		this.l_qq = l_qq;
	}
	public String getL_mail() {
		return l_mail;
	}
	public void setL_mail(String l_mail) {
		this.l_mail = l_mail;
	}
	public String getL_like() {
		return l_like;
	}
	public void setL_like(String l_like) {
		this.l_like = l_like;
	}
	public String getL_job() {
		return l_job;
	}
	public void setL_job(String l_job) {
		this.l_job = l_job;
	}
	public String getL_extend1() {
		return l_extend1;
	}
	public void setL_extend1(String l_extend1) {
		this.l_extend1 = l_extend1;
	}
	public String getL_extend2() {
		return l_extend2;
	}
	public void setL_extend2(String l_extend2) {
		this.l_extend2 = l_extend2;
	}
	public String getL_extend3() {
		return l_extend3;
	}
	public void setL_extend3(String l_extend3) {
		this.l_extend3 = l_extend3;
	}
	public String getL_extend4() {
		return l_extend4;
	}
	public void setL_extend4(String l_extend4) {
		this.l_extend4 = l_extend4;
	}
	public String getL_extend5() {
		return l_extend5;
	}
	public void setL_extend5(String l_extend5) {
		this.l_extend5 = l_extend5;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
		
}
