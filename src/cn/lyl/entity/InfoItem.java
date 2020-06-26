package cn.lyl.entity;

import org.springframework.stereotype.Component;

public class InfoItem {
	private Integer i_id;//序号
	private String i_info;//内容
	private String i_other;//说明
	private String i_extend1;
	private String i_extend2;
	private String i_extend3;
	
	//在详细内容里面表示所属条目，一条内容只能属于一项条目
	private DataInfo dataInfo;
	
	public Integer getI_id() {
		return i_id;
	}
	public void setI_id(Integer i_id) {
		this.i_id = i_id;
	}
	public String getI_info() {
		return i_info;
	}
	public void setI_info(String i_info) {
		this.i_info = i_info;
	}
	public String getI_other() {
		return i_other;
	}
	public void setI_other(String i_other) {
		this.i_other = i_other;
	}
	public String getI_extend1() {
		return i_extend1;
	}
	public void setI_extend1(String i_extend1) {
		this.i_extend1 = i_extend1;
	}
	public String getI_extend2() {
		return i_extend2;
	}
	public void setI_extend2(String i_extend2) {
		this.i_extend2 = i_extend2;
	}
	public String getI_extend3() {
		return i_extend3;
	}
	public void setI_extend3(String i_extend3) {
		this.i_extend3 = i_extend3;
	}
	public DataInfo getDataInfo() {
		return dataInfo;
	}
	public void setDataInfo(DataInfo dataInfo) {
		this.dataInfo = dataInfo;
	}
	
}
