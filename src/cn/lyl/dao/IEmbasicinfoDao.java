package cn.lyl.dao;

import cn.lyl.entity.Embasicinfo;
import cn.lyl.entity.Employee;

public interface IEmbasicinfoDao extends IUnusualDao<Embasicinfo, Employee> {
	public void find();
	public void delete(Embasicinfo embasicinfo);
}
