package cn.lyl.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

/*
 * ����ʵ����
 * Department
 */
@Component(value="department")
public class Department {
	private Integer d_id;//���
	private String d_name;//����
	private String d_code;//����
	private String d_helpcode;//������
	private String d_principal;//������
	private String d_phone;//���ŵ绰
	private Integer d_num;//��������
	
	private String d_extend1;//��չ�ֶ�
	private String d_extend2;//��չ�ֶ�
	private String d_extend3;//��չ�ֶ�
	private String d_extend4;//��չ�ֶ�
	private String d_extend5;//��չ�ֶ�
	//�ڲ��������ʾ���Ա�� һ�������ж��Ա��
	private Set<Employee> setEmployee = new HashSet<Employee>();
	public Integer getD_id() {
		return d_id;
	}
	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getD_code() {
		return d_code;
	}
	public void setD_code(String d_code) {
		this.d_code = d_code;
	}
	public String getD_helpcode() {
		return d_helpcode;
	}
	public void setD_helpcode(String d_helpcode) {
		this.d_helpcode = d_helpcode;
	}
	public String getD_principal() {
		return d_principal;
	}
	public void setD_principal(String d_principal) {
		this.d_principal = d_principal;
	}
	public String getD_phone() {
		return d_phone;
	}
	public void setD_phone(String d_phone) {
		this.d_phone = d_phone;
	}
	public Integer getD_num() {
		return d_num;
	}
	public void setD_num(Integer d_num) {
		this.d_num = d_num;
	}
	public String getD_extend1() {
		return d_extend1;
	}
	public void setD_extend1(String d_extend1) {
		this.d_extend1 = d_extend1;
	}
	public String getD_extend2() {
		return d_extend2;
	}
	public void setD_extend2(String d_extend2) {
		this.d_extend2 = d_extend2;
	}
	public String getD_extend3() {
		return d_extend3;
	}
	public void setD_extend3(String d_extend3) {
		this.d_extend3 = d_extend3;
	}
	public Set<Employee> getSetEmployee() {
		return setEmployee;
	}
	public void setSetEmployee(Set<Employee> setEmployee) {
		this.setEmployee = setEmployee;
	}
	public String getD_extend4() {
		return d_extend4;
	}
	public void setD_extend4(String d_extend4) {
		this.d_extend4 = d_extend4;
	}
	public String getD_extend5() {
		return d_extend5;
	}
	public void setD_extend5(String d_extend5) {
		this.d_extend5 = d_extend5;
	}
	
	
	
	
	
	
	
	
	
	
	
}
