package cn.lyl.dao;

import cn.lyl.entity.DataInfo;

public interface IDataInfoDao extends ICommonDao<DataInfo> {
	public DataInfo find(String arg);
	public void delete(DataInfo arg);
}
