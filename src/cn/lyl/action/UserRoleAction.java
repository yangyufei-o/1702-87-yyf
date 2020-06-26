package cn.lyl.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.entity.UserRole;
import cn.lyl.serviceImpl.UserRoleSevc;


public class UserRoleAction extends BasicAction implements ModelDriven<UserRole>{
	@Autowired
	private UserRoleSevc urs;
	@Autowired
	private UserRole userRole;
	@Autowired
	private List<UserRole> listur;
	
	
	private String uid;
	@Override
	public UserRole getModel() {

		return userRole;
	}
	
	public String find(){
		listur = urs.findAll();
		return "find";
	}
	
	public String save(){
		urs.save(userRole);
		return "find";
	}
	
	public String chaxun(){
		userRole = urs.find(uid);
		return "update";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	public List<UserRole> getListur() {
		return listur;
	}

	public void setListur(List<UserRole> listur) {
		this.listur = listur;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
}
