package cn.lyl.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.lyl.daoImpl.SystemLogDaoImpl;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;

@Controller(value="systemLogAction")
public class SystemLogAction extends BasicAction {
	
	@Autowired
	private SystemLogDaoImpl sldi;
	
	private List<SystemLog> listsl;
	@Autowired
	private SystemSevc ss;
	private String keyword;
	
	public String find(){
		listsl = ss.findAll();
		return "find";
	}
	
	public String findby(){
		listsl = ss.findBy(keyword);
		return "find";
	}

	
	
	
	
	
	
	
	
	public SystemLogDaoImpl getSldi() {
		return sldi;
	}

	public void setSldi(SystemLogDaoImpl sldi) {
		this.sldi = sldi;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<SystemLog> getListsl() {
		return listsl;
	}

	public void setListsl(List<SystemLog> listsl) {
		this.listsl = listsl;
	}
	
	
	
}
