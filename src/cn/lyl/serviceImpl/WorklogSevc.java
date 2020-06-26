package cn.lyl.serviceImpl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.daoImpl.CustomerDaoImpl;
import cn.lyl.daoImpl.InfoItemDaoImpl;
import cn.lyl.daoImpl.WorklogDaoImpl;
import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.Worklog;

@Transactional
@Service(value="worklogSevc")
public class WorklogSevc {
	@Autowired
	private Worklog worklog;
	@Autowired
	private WorklogDaoImpl wldi;
	@Autowired
	private CustomerDaoImpl cdi;
	@Autowired
	private InfoItemDaoImpl iidi;
	public void save(Worklog entity1, Employee entity2) {
		wldi.save(entity1, entity2);
	}
	
	public Set<Worklog> findAll(Employee arg){
		return wldi.findAll(arg);
	}
	
	public Worklog find(String arg){
		return wldi.find(arg);
	}
	public void delete(String arg){
		worklog = wldi.find(arg);
		wldi.delete(worklog);
	}
	
	
	public List<InfoItem> findItem(String arg){
		return iidi.findAll(arg);
	}
	
	public List<Customer> findCust(){
		return cdi.findAll();
	}
	
	
}
