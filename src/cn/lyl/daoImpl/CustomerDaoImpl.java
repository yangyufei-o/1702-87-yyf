package cn.lyl.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.ICustomerDao;
import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;

@Repository(value="customerDaoImpl")
public class CustomerDaoImpl extends UnusualDaoImpl<Customer, Employee> implements ICustomerDao {
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	
	private List<Customer> listc= new ArrayList<Customer>();
	@Override
	public void save(Customer entity1, Employee entity2) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		ss.save(sl);
		entity1.setEmployee(entity2);
		hbt.saveOrUpdate(entity1);
	}

	@Override
	public void update(Customer entity1, Employee entity2) {
		// TODO Auto-generated method stub
	}

	@Override
	public Customer find(String arg) {
		return hbt.get(Customer.class, arg);
	}
	public List<Customer> findBy(String arg){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("搜索了:客户  关键字为:"+arg);
		ss.save(sl);		
		String key = "%"+arg+"%";
		return (List<Customer>) hbt.find("from Customer where c_rersource like ? or c_name like ? or c_category like ? or c_code like ? or c_shortname like? or c_industy like ? or c_type like ? or c_region like ? or c_status like ? or c_qq like ?",
				key,key,key,key,key,key,key,key,key,key);
	}
	public List<Customer> findAll(){
		listc =  (List<Customer>) hbt.find("from Customer");
		if(listc.size()>0){
		for (Customer customer : listc) {
			customer.setC_extend5(customer.getEmployee().getE_name());
		}
		}
		return listc;
	}
	@Override
	public void delete(Customer customer) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("删除了:客户  "+customer.getC_name());
		ss.save(sl);
		hbt.delete(customer);
	}

}
