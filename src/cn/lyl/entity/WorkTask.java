package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * ��������ʵ����
 * WorkTask
 */
@Component(value="workTask")
public class WorkTask {
	private Integer t_id;//���
	private String t_theme;//��������
	private String t_submit;//�ύҵ��Ա����
	private String t_type;//�������
	private String t_project;//������Ŀ
	private String t_principal;//�����˱���
	private String t_part;//��������
	private String t_found;//����ʱ��
	private String t_deadtime;//�ƻ����ʱ��
	private String t_status;//����״̬
	private String t_important;//�Ƿ����
	private String t_level;//��Ҫ����
	private String t_send;//�Ƿ����
	
	private String t_extend1;//��չ�ֶ�
	private String t_extend2;//��չ�ֶ�
	private String t_extend3;//��չ�ֶ�
	private String t_extend4;//��չ�ֶ�
	private String t_extend5;//��չ�ֶ�
	
	//������ʵ���������ʾ���������ˣ�һ������ֻ������һ��������
	private Employee employee;
	
	public Integer getT_id() {
		return t_id;
	}
	public void setT_id(Integer t_id) {
		this.t_id = t_id;
	}
	public String getT_theme() {
		return t_theme;
	}
	public void setT_theme(String t_theme) {
		this.t_theme = t_theme;
	}
	public String getT_submit() {
		return t_submit;
	}
	public void setT_submit(String t_submit) {
		this.t_submit = t_submit;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public String getT_project() {
		return t_project;
	}
	public void setT_project(String t_project) {
		this.t_project = t_project;
	}
	public String getT_principal() {
		return t_principal;
	}
	public void setT_principal(String t_principal) {
		this.t_principal = t_principal;
	}
	public String getT_part() {
		return t_part;
	}
	public void setT_part(String t_part) {
		this.t_part = t_part;
	}
	public String getT_found() {
		return t_found;
	}
	public void setT_found(String t_found) {
		this.t_found = t_found;
	}
	public String getT_deadtime() {
		return t_deadtime;
	}
	public void setT_deadtime(String t_deadtime) {
		this.t_deadtime = t_deadtime;
	}
	public String getT_status() {
		return t_status;
	}
	public void setT_status(String t_status) {
		this.t_status = t_status;
	}
	public String getT_important() {
		return t_important;
	}
	public void setT_important(String t_important) {
		this.t_important = t_important;
	}
	public String getT_level() {
		return t_level;
	}
	public void setT_level(String t_level) {
		this.t_level = t_level;
	}
	
	public String getT_send() {
		return t_send;
	}
	public void setT_send(String t_send) {
		this.t_send = t_send;
	}
	public String getT_extend1() {
		return t_extend1;
	}
	public void setT_extend1(String t_extend1) {
		this.t_extend1 = t_extend1;
	}
	public String getT_extend2() {
		return t_extend2;
	}
	public void setT_extend2(String t_extend2) {
		this.t_extend2 = t_extend2;
	}
	public String getT_extend3() {
		return t_extend3;
	}
	public void setT_extend3(String t_extend3) {
		this.t_extend3 = t_extend3;
	}
	public String getT_extend4() {
		return t_extend4;
	}
	public void setT_extend4(String t_extend4) {
		this.t_extend4 = t_extend4;
	}
	public String getT_extend5() {
		return t_extend5;
	}
	public void setT_extend5(String t_extend5) {
		this.t_extend5 = t_extend5;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
}
