package cn.lyl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.SystemLogDaoImpl;
import cn.lyl.entity.SystemLog;

@Transactional
@Service(value="systemSevc")
public class SystemSevc {
	@Autowired
	private SystemLogDaoImpl sldi;
	public void save(SystemLog arg){
		sldi.save(arg);
	}
	public List<SystemLog> findAll(){
		return sldi.findAll();
	}
	
	public List<SystemLog> findBy(String arg){
		return sldi.findBy(arg);
	}
}
