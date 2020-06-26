package cn.lyl.dao;

import cn.lyl.entity.Customer;
import cn.lyl.entity.LinkMan;

public interface ILinkManDao extends IUnusualDao<LinkMan, Customer> {
	public LinkMan find(String arg);
	public void delete(LinkMan linkMan);
}
