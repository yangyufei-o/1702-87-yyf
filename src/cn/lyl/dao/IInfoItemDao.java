package cn.lyl.dao;

import cn.lyl.entity.DataInfo;
import cn.lyl.entity.InfoItem;

public interface IInfoItemDao extends IUnusualDao<InfoItem, DataInfo> {
	public InfoItem find(String arg);
	public void delete(InfoItem arg);
}
