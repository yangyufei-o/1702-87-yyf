package cn.lyl.serviceImpl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.CustomerDaoImpl;
import cn.lyl.daoImpl.InfoItemDaoImpl;
import cn.lyl.daoImpl.LinkManDaoImpl;
import cn.lyl.entity.Customer;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.LinkMan;

@Transactional
@Service(value="linkManSevc")
public class LinkManSevc {
	@Autowired
	private InfoItemDaoImpl iidi;
	@Autowired
	private Customer customer;
	@Autowired
	private CustomerDaoImpl cdi;
	@Autowired
	private LinkManDaoImpl lmdi;
	public void save(LinkMan entity1, String ccode) {
		customer = cdi.find(ccode);
		lmdi.save(entity1, customer);
	}
	public Set<LinkMan> findAll(String arg){
		System.out.println("linkmansevc"+arg);
		return lmdi.findAll(arg);
	}
	public List<LinkMan> findby(String arg1,String arg2){
		return lmdi.findBy(arg1, arg2);
	}
	
	public void delete(String arg){
		lmdi.delete(lmdi.find(arg));
	}
	
	public LinkMan find(String arg){
		return lmdi.find(arg);
	}
	
	
	public List<InfoItem> findItem(String arg){
		return iidi.findAll(arg);
	}
	
	
	
	
	
	
	
	
	
	
	
}
