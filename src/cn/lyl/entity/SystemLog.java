package cn.lyl.entity;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Component;


public class SystemLog {
	private Integer s_id;
	private String s_time;
	private String s_operator;
	private String s_info;
	private String s_extend1;
	private String s_extend2;
	private String s_extend3;

	public Integer getS_id() {
		return s_id;
	}
	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}
	public String getS_time() {
		return s_time;
	}
	public void setS_time(String s_time) {
		this.s_time = s_time;
	}
	public String getS_operator() {
		return s_operator;
	}
	public void setS_operator(String s_operator) {
		this.s_operator = s_operator;
	}
	public String getS_info() {
		return s_info;
	}
	public void setS_info(String s_info) {
		this.s_info = s_info;
	}
	public String getS_extend1() {
		return s_extend1;
	}
	public void setS_extend1(String s_extend1) {
		this.s_extend1 = s_extend1;
	}
	public String getS_extend2() {
		return s_extend2;
	}
	public void setS_extend2(String s_extend2) {
		this.s_extend2 = s_extend2;
	}
	public String getS_extend3() {
		return s_extend3;
	}
	public void setS_extend3(String s_extend3) {
		this.s_extend3 = s_extend3;
	}
	public String time(){
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd-HH:mm:ss");
		return format.format(date);
	}
}
