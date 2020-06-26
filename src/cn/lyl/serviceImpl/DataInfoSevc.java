package cn.lyl.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.DataInfoDaoImpl;
import cn.lyl.entity.DataInfo;
@Service(value="dataInfoSevc")
@Transactional
public class DataInfoSevc {
	@Autowired
	private DataInfoDaoImpl didi;
	
	public int getId(){
		return didi.getId();
	}
	public void save(DataInfo entity){
		didi.save(entity);
	}
	
	public List<DataInfo> findAll(){
		return didi.findAll();
	}
	public DataInfo find(String arg){
		return didi.find(arg);
	}
	
	public void delete(String arg){
		didi.delete(didi.find(arg));
	}
	public List<DataInfo> findBy(String arg){
		return didi.findBy(arg);
	}
	
	
	
	
}
