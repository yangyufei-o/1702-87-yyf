package cn.lyl.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.IDataInfoDao;
import cn.lyl.entity.DataInfo;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;
@Repository(value="dataInfoDaoImpl")
public class DataInfoDaoImpl extends CommonDaoImpl<DataInfo> implements IDataInfoDao {
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	
	@Resource(name="dataInfo")
	private DataInfo datainfo;
	
	@Resource(name="dataInfo")
	private DataInfo datainfo1;
	@Resource(name="dataInfo")
	private DataInfo datainfo2;
	@Resource(name="dataInfo")
	private DataInfo datainfo3;
	@Resource(name="dataInfo")
	private DataInfo datainfo4;
	@Resource(name="dataInfo")
	private DataInfo datainfo5;
	@Resource(name="dataInfo")
	private DataInfo datainfo6;
	@Resource(name="dataInfo")
	private DataInfo datainfo7;
	@Resource(name="dataInfo")
	private DataInfo datainfo8;
	@Resource(name="dataInfo")
	private DataInfo datainfo9;
	@Resource(name="dataInfo")
	private DataInfo datainfo10;
	@Resource(name="dataInfo")
	private DataInfo datainfo11;

	
	private List<DataInfo> listdi ;
	private int temp;
	public void chushihua(){//��ʼ����������
		datainfo1.setD_name("Ա��ְ��");
		ht.save(datainfo1);
		datainfo2.setD_name("Ա����λ");
		ht.save(datainfo2);
		datainfo3.setD_name("Ա��ְ��");
		ht.save(datainfo3);
		datainfo4.setD_name("���ȼ���");
		ht.save(datainfo4);
		datainfo5.setD_name("��־���");
		ht.save(datainfo5);
		datainfo6.setD_name("�ͻ����");
		ht.save(datainfo6);
		datainfo7.setD_name("��ҵ���");
		ht.save(datainfo7);
		datainfo8.setD_name("�ͻ�����");
		ht.save(datainfo8);
		datainfo9.setD_name("��������");
		ht.save(datainfo9);
		datainfo10.setD_name("�ɽ�����");
		ht.save(datainfo10);
		datainfo11.setD_name("�ͻ�״̬");
		ht.save(datainfo11);
	}
	
	
	@Override
	public void save(DataInfo entity) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("������:��������  "+entity.getD_name());
		ss.save(sl);
		ht.saveOrUpdate(entity);		
	}
	
	public List<DataInfo> findAll(){
		return (List<DataInfo>) ht.find("from DataInfo");
	}
	
	
	@Override
	public void update(DataInfo entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public DataInfo find(String arg) {
		return ht.get(DataInfo.class, Integer.parseInt(arg));
	
	}
	public List<DataInfo> findBy(String arg){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("������:��������  �ؼ���Ϊ��"+arg);
		ss.save(sl);		
		String key = "%"+arg+"%";
		return (List<DataInfo>) ht.find("from DataInfo where d_name like?", key);
	}
	
	
	@Override
	public void delete(DataInfo arg) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("ɾ����:��������  "+arg.getD_name());
		ss.save(sl);		
		ht.delete(arg);
	}
	public int getId(){
		listdi = (List<DataInfo>) ht.find("from DataInfo order by ? asc", "d_code");
		try{
			datainfo = listdi.get(listdi.size()-1);
			temp = datainfo.getD_code()+1;
		}catch(Exception e){
			temp = 1;
		}
		
		return temp;
	}
}
