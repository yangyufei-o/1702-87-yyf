package cn.lyl.entity;

import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Component;

@Component(value="dataInfo")
public class DataInfo {
	private Integer d_code;//���
	private String d_name;//����
	private String d_extend1;
	private String d_extend2;
	private String d_extend3;
	
	//������������Ŀʵ���������ʾ����������ϸ���ݣ�һ����Ŀ�����ж�������
	private Set<InfoItem> setInfoItem = new HashSet<InfoItem>();
	public Integer getD_code() {
		return d_code;
	}
	public void setD_code(Integer d_code) {
		this.d_code = d_code;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
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
	public Set<InfoItem> getSetInfoItem() {
		return setInfoItem;
	}
	public void setSetInfoItem(Set<InfoItem> setInfoItem) {
		this.setInfoItem = setInfoItem;
	}
	
	
}
