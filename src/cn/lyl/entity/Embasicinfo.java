package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * 员工基础资料实体类
 * Embasicinfo
 */
@Component(value="embasicinfo")
public class Embasicinfo {
	private Integer e_id;//序号
	private String e_school;//毕业院校
	private String e_maxeducate;//最高学历
	private String e_major;//所学专业
	private String e_face;//政治面貌
	private String e_nation;//民族
	private String e_marry;//婚姻状况
	private String e_identity;//身份证号
	private String e_detail;//详细地址
	private String e_country;//国家
	private String e_province;//省
	private String e_city;//市
	private String e_county;//县/区
	private String e_lvision;//左眼视力
	private String e_rvision;//右眼视力
	private String e_height;//身高
	private String e_weight;//体重
	private String e_health;//健康状况
	private String e_healthm;//健康备注
	private String e_self;//自我评价
	private String e_like;//兴趣爱好
	private String e_jobvista;//工作前景
	private String e_picurl;//照片
	

	private String e_extend1;//扩展字段
	private String e_extend2;//扩展字段
	private String e_extend3;//扩展字段
	private String e_extend4;//扩展字段
	private String e_extend5;//扩展字段
	
	//在基本信息里面表示所属员工，一个基本信息只能属于一个员工
	private Employee employee;
	
	public Integer getE_id() {
		return e_id;
	}
	public void setE_id(Integer e_id) {
		this.e_id = e_id;
	}

	public String getE_school() {
		return e_school;
	}
	public void setE_school(String e_school) {
		this.e_school = e_school;
	}
	public String getE_maxeducate() {
		return e_maxeducate;
	}
	public void setE_maxeducate(String e_maxeducate) {
		this.e_maxeducate = e_maxeducate;
	}
	public String getE_major() {
		return e_major;
	}
	public void setE_major(String e_major) {
		this.e_major = e_major;
	}
	public String getE_face() {
		return e_face;
	}
	public void setE_face(String e_face) {
		this.e_face = e_face;
	}
	public String getE_nation() {
		return e_nation;
	}
	public void setE_nation(String e_nation) {
		this.e_nation = e_nation;
	}
	public String getE_marry() {
		return e_marry;
	}
	public void setE_marry(String e_marry) {
		this.e_marry = e_marry;
	}
	public String getE_identity() {
		return e_identity;
	}
	public void setE_identity(String e_identity) {
		this.e_identity = e_identity;
	}
	public String getE_detail() {
		return e_detail;
	}
	public void setE_detail(String e_detail) {
		this.e_detail = e_detail;
	}
	public String getE_country() {
		return e_country;
	}
	public void setE_country(String e_country) {
		this.e_country = e_country;
	}
	public String getE_province() {
		return e_province;
	}
	public void setE_province(String e_province) {
		this.e_province = e_province;
	}
	public String getE_city() {
		return e_city;
	}
	public void setE_city(String e_city) {
		this.e_city = e_city;
	}
	public String getE_county() {
		return e_county;
	}
	public void setE_county(String e_county) {
		this.e_county = e_county;
	}
	public String getE_lvision() {
		return e_lvision;
	}
	public void setE_lvision(String e_lvision) {
		this.e_lvision = e_lvision;
	}
	public String getE_rvision() {
		return e_rvision;
	}
	public void setE_rvision(String e_rvision) {
		this.e_rvision = e_rvision;
	}
	public String getE_height() {
		return e_height;
	}
	public void setE_height(String e_height) {
		this.e_height = e_height;
	}
	public String getE_weight() {
		return e_weight;
	}
	public void setE_weight(String e_weight) {
		this.e_weight = e_weight;
	}
	public String getE_health() {
		return e_health;
	}
	public void setE_health(String e_health) {
		this.e_health = e_health;
	}
	public String getE_healthm() {
		return e_healthm;
	}
	public void setE_healthm(String e_healthm) {
		this.e_healthm = e_healthm;
	}
	public String getE_self() {
		return e_self;
	}
	public void setE_self(String e_self) {
		this.e_self = e_self;
	}
	public String getE_like() {
		return e_like;
	}
	public void setE_like(String e_like) {
		this.e_like = e_like;
	}
	public String getE_jobvista() {
		return e_jobvista;
	}
	public void setE_jobvista(String e_jobvista) {
		this.e_jobvista = e_jobvista;
	}
	public String getE_picurl() {
		return e_picurl;
	}
	public void setE_picurl(String e_picurl) {
		this.e_picurl = e_picurl;
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
