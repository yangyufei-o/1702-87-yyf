package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * �칫��־ʵ����
 */
@Component(value="worklog")
public class Worklog {
	private Integer l_id;//���
	private String l_name;//Ա������
	private String l_part;//Ա������*
	private String l_found;//����ʱ��
	private String l_cutsname;//�ͻ�����*
	private String l_type;//���*
	private String l_level;//���ȼ���*
	private String l_start;//��ʼʱ��
	private String l_end;//����ʱ��
	private String l_status;//����״̬*
	private String l_theme;//��־����
	private String l_money;//�Ƿ����*
	private String l_detail;//��ϸ����
	
	private String l_extend1;//��չ�ֶ�
	private String l_extend2;//��չ�ֶ�
	private String l_extend3;//��չ�ֶ�
	private String l_extend4;//��չ�ֶ�
	private String l_extend5;//��չ�ֶ�
	
	//�ڹ�����־�����ʾ����Ա����һ��������־ֻ������һ��Ա��
	private Employee employee;
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
	public String getL_part() {
		return l_part;
	}
	public void setL_part(String l_part) {
		this.l_part = l_part;
	}
	public String getL_found() {
		return l_found;
	}
	public void setL_found(String l_found) {
		this.l_found = l_found;
	}
	public String getL_cutsname() {
		return l_cutsname;
	}
	public void setL_cutsname(String l_cutsname) {
		this.l_cutsname = l_cutsname;
	}
	public String getL_type() {
		return l_type;
	}
	public void setL_type(String l_type) {
		this.l_type = l_type;
	}
	public String getL_level() {
		return l_level;
	}
	public void setL_level(String l_level) {
		this.l_level = l_level;
	}
	public String getL_start() {
		return l_start;
	}
	public void setL_start(String l_start) {
		this.l_start = l_start;
	}
	public String getL_end() {
		return l_end;
	}
	public void setL_end(String l_end) {
		this.l_end = l_end;
	}
	public String getL_status() {
		return l_status;
	}
	public void setL_status(String l_status) {
		this.l_status = l_status;
	}
	public String getL_theme() {
		return l_theme;
	}
	public void setL_theme(String l_theme) {
		this.l_theme = l_theme;
	}
	public String getL_money() {
		return l_money;
	}
	public void setL_money(String l_money) {
		this.l_money = l_money;
	}
	public String getL_detail() {
		return l_detail;
	}
	public void setL_detail(String l_detail) {
		this.l_detail = l_detail;
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
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
	
}
