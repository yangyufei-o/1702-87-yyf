package cn.lyl.daoImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.dao.IInfoItemDao;
import cn.lyl.entity.DataInfo;
import cn.lyl.entity.InfoItem;


@Repository(value="infoItemDaoImpl")
public class InfoItemDaoImpl extends UnusualDaoImpl<InfoItem, DataInfo> implements IInfoItemDao {
	@Autowired
	private InfoItem infoItem;
	private List<InfoItem> listii;
	private int temp;
	@Override
	public void save(InfoItem entity1, DataInfo entity2) {
		entity1.setDataInfo(entity2);
		hbt.saveOrUpdate(entity1);
	}

	@Override
	public void update(InfoItem entity1, DataInfo entity2) {
		// TODO Auto-generated method stub

	}

	@Override
	public InfoItem find(String arg) {
		return hbt.get(InfoItem.class, Integer.parseInt(arg));
	}
	public List<InfoItem> findAll(String arg){
		return (List<InfoItem>) hbt.find("from InfoItem where icode = ?", Integer.parseInt(arg));
	}
	@Override
	public void delete(InfoItem arg) {
		hbt.delete(arg);
	}

	public int getId(){
		listii = (List<InfoItem>) hbt.find("from InfoItem order by ? asc", "i_id");
		try{
			infoItem = listii.get(listii.size()-1);
			temp = infoItem.getI_id()+1;
		}catch(Exception e){
			temp = 1;
		}
		return temp;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
