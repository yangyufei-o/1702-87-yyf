package cn.lyl.serviceImpl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.DataInfoDaoImpl;
import cn.lyl.daoImpl.InfoItemDaoImpl;
import cn.lyl.entity.DataInfo;
import cn.lyl.entity.InfoItem;
@Transactional
@Service(value="infoItemSevc")
public class InfoItemSevc {
	
	@Autowired
	private InfoItemDaoImpl iidi;
	@Autowired
	private DataInfo dataInfo;
	@Autowired
	private DataInfoDaoImpl didi;
	
	public void save(InfoItem arg1,String arg2){
		iidi.save(arg1, didi.find(arg2));
	}
	public Set<InfoItem> findAll(String arg){
		dataInfo = didi.find(arg);
		return dataInfo.getSetInfoItem();
	}
	public void delete(String arg){
		iidi.delete(iidi.find(arg));
	}
	
	public InfoItem find(String arg){
		return iidi.find(arg);
	}
	
	
	
	public int getId(){
		return iidi.getId();
	}
	
}
