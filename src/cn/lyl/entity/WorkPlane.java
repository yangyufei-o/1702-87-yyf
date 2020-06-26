package cn.lyl.entity;

import org.springframework.stereotype.Component;

/*
 * �����ƻ�ʵ����
 * WorkPlane
 */
@Component(value="workPlane")
public class WorkPlane {
	private Integer p_id;//���
	private String p_name;//Ա������
	private String p_part;//Ա������
	private String p_type;//�ƻ����
	private String p_start;//��ʼʱ��
	private String p_end;//����ʱ��
	private String p_theme;//�ƻ�����
	private String p_detail;//�ƻ�����
	private String p_status;//����״̬
	
	private String p_extend1;//��չ�ֶ�
	private String p_extend2;//��չ�ֶ�
	private String p_extend3;//��չ�ֶ�
	private String p_extend4;//��չ�ֶ�
	private String p_extend5;//��չ�ֶ�
	
	//�ڹ����ƻ�ʵ���������ʾ���������ˣ�Ա������һ�������ƻ�ֻ������һ�������ˣ�Ա����
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
