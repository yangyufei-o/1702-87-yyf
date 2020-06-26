package cn.lyl.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.daoImpl.DataInfoDaoImpl;
import cn.lyl.entity.DataInfo;
import cn.lyl.entity.InfoItem;
import cn.lyl.serviceImpl.InfoItemSevc;


public class InfoItemAction extends BasicAction implements ModelDriven<InfoItem>{
	
	@Autowired
	private InfoItemSevc iis;
	@Autowired
	private DataInfoDaoImpl didi;
	
	@Resource(name="infoItem")
	private InfoItem infoItem;
	
	@Resource(name="dataInfo")
	private DataInfo dataInfo;
	
	private List<InfoItem> listii = new ArrayList<InfoItem>();
	
	private String iid;
	private String datacode;
	private String dataname;
	@Override
	public InfoItem getModel() {
		// TODO Auto-generated method stub
		return infoItem;
	}

		
	public String add(){
		dataname = super.getSesion().get("dname").toString();
		iid = String.valueOf(iis.getId());
		return "add";
	}
	
	public String save(){
		datacode = super.getSesion().get("dcode").toString();
		iis.save(infoItem, datacode);
		return NONE;
	}
	
	public String find(){
		dataInfo = didi.find(datacode);
		super.getSesion().put("dname", dataInfo.getD_name());
		super.getSesion().put("dcode", dataInfo.getD_code());
		dataname = dataInfo.getD_name();
		listii.clear();
		listii.addAll(iis.findAll(datacode));
		return "find";
	}
	public String shuaxin(){
		dataname=super.getSesion().get("dname").toString();
		datacode=super.getSesion().get("dcode").toString();
		listii.clear();
		listii.addAll(iis.findAll(datacode));
		return "find";
	}
	
	public String delete(){
		dataname=super.getSesion().get("dname").toString();
		datacode=super.getSesion().get("dcode").toString();
		iis.delete(iid);
		listii.clear();
		listii.addAll(iis.findAll(datacode));
		return "find";
	}
	public String chaxun(){
		infoItem=iis.find(iid);
		return "update";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public String getIid() {
		return iid;
	}

	public void setIid(String iid) {
		this.iid = iid;
	}

	public String getDatacode() {
		return datacode;
	}

	public void setDatacode(String datacode) {
		this.datacode = datacode;
	}

	public DataInfo getDataInfo() {
		return dataInfo;
	}

	public void setDataInfo(DataInfo dataInfo) {
		this.dataInfo = dataInfo;
	}

	public String getDataname() {
		return dataname;
	}

	public void setDataname(String dataname) {
		this.dataname = dataname;
	}

	public InfoItem getInfoItem() {
		return infoItem;
	}

	public void setInfoItem(InfoItem infoItem) {
		this.infoItem = infoItem;
	}

	public List<InfoItem> getListii() {
		return listii;
	}

	public void setListii(List<InfoItem> listii) {
		this.listii = listii;
	}
	
	
	
}
