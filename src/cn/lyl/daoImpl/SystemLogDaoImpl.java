package cn.lyl.daoImpl;

import java.util.List;

import org.springframework.stereotype.Component;

import cn.lyl.dao.ISystemLogDao;
import cn.lyl.entity.SystemLog;

@Component(value="systemLogDaoImpl")
public class SystemLogDaoImpl extends CommonDaoImpl<SystemLog> implements ISystemLogDao {

	@Override
	public void save(SystemLog entity) {
		ht.save(entity);
	}

	@Override
	public void update(SystemLog entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(SystemLog entity) {
		// TODO Auto-generated method stub

	}
	public List<SystemLog> findBy(String arg){
		String key = "%"+arg+"%";
		return (List<SystemLog>) ht.find("from SystemLog where s_operator like ? or s_info like ? or s_time like ?",key,key,key);
	}
	
	public List<SystemLog> findAll(){
		return (List<SystemLog>) ht.find("from SystemLog");
	}
}
