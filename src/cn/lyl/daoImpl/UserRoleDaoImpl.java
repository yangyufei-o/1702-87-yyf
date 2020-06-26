package cn.lyl.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.dao.IUserRoleDao;
import cn.lyl.entity.UserRole;

@Repository(value="userRoleDaoImpl")
public class UserRoleDaoImpl extends CommonDaoImpl<UserRole> implements IUserRoleDao {
	@Override
	public void save(UserRole entity) {
		ht.saveOrUpdate(entity);
	}

	
	@Override
	public void update(UserRole entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(UserRole entity) {
		// TODO Auto-generated method stub

	}
	public UserRole find(int arg){
		return ht.get(UserRole.class, arg);
	}
	
	public List<UserRole> findAll(){
		return (List<UserRole>) ht.find("from UserRole");
	}
	
	
	
	
	
	
	
	
}
