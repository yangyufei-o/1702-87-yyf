package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * Ա����������ʵ����
 */
@Component(value="emworkepr")
public class Emworkepr {
	private Integer e_id;//���
	private String e_start;//��ʼʱ��
	private String e_end;//����ʱ��
	private String e_firm;//������λ
	private String e_part;//����
	private String e_job;//ְ��
	private String e_duty;//ְ������
	
	private String e_extend1;//��չ�ֶ�
	private String e_extend2;//��չ�ֶ�
	private String e_extend3;//��չ�ֶ�
	private String e_extend4;//��չ�ֶ�
	private String e_extend5;//��չ�ֶ�
	
	//�ڹ������������ʾ����Ա����һ����������ֻ������һ��Ա��
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
