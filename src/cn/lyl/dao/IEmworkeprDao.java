package cn.lyl.dao;

import cn.lyl.entity.Employee;
import cn.lyl.entity.Emworkepr;

public interface IEmworkeprDao extends IUnusualDao<Emworkepr, Employee> {
	public void find();
	public void delete(Emworkepr emworkepr);
}
