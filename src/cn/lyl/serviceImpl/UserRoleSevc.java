package cn.lyl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.UserRoleDaoImpl;
import cn.lyl.entity.UserRole;


@Transactional
@Service(value="userRoleSevc")
public class UserRoleSevc {
	@Autowired
	private UserRoleDaoImpl urdi;
	
	public void save(UserRole arg){
		urdi.save(arg);
	}
	
	public List<UserRole> findAll(){
		return urdi.findAll();
	}
	public UserRole find(String arg){
		return urdi.find(Integer.parseInt(arg));
	}
}
