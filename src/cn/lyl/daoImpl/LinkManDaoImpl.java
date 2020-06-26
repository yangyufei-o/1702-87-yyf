package cn.lyl.daoImpl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.ILinkManDao;
import cn.lyl.entity.Customer;
import cn.lyl.entity.LinkMan;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;
@Repository(value="linkManDaoImpl")
public class LinkManDaoImpl extends UnusualDaoImpl<LinkMan, Customer> implements ILinkManDao {

	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	
	@Override
	public void save(LinkMan entity1, Customer entity2) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("保存了:联系人  "+entity1.getL_name()+"  所属客户:"+entity2.getC_name());
		ss.save(sl);
		entity1.setCustomer(entity2);
		hbt.saveOrUpdate(entity1);
	}

	@Override
	public void update(LinkMan entity1, Customer entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public LinkMan find(String arg) {
		return hbt.get(LinkMan.class, arg);
	}
	public Set<LinkMan> findAll(String arg){
		return hbt.get(Customer.class, arg).getSetLinkMan();
	}
	
	public List<LinkMan> findBy(String arg1,String arg2){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("搜索了:联系人: 关键字"+"所属客户编码: "+arg2);
		ss.save(sl);
		String key = "%"+arg1+"%";
		return (List<LinkMan>) hbt.find("from LinkMan where (l_name like ? or l_nickname like ? or l_code like ? or l_sex like ? or l_tel like ? or l_phone like ? or l_address like ? or l_qq like ? or l_mail like ? or l_like like ? or l_duty like ? or  l_job like ?) and custcode=?",key,key,key,key,key,key,key,key,key,key,key,key,arg2);                                                                                                    
	}//
	@Override
	public void delete(LinkMan linkMan) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("删除了:联系人:"+linkMan.getL_name()+"  所属客户:"+linkMan.getCustomer().getC_name());
		ss.save(sl);
		hbt.delete(linkMan);
	}

}
