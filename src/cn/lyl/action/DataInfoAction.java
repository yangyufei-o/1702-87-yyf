package cn.lyl.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.entity.DataInfo;
import cn.lyl.serviceImpl.DataInfoSevc;


public class DataInfoAction extends BasicAction implements ModelDriven<DataInfo>{
	@Resource(name="dataInfo")
	private DataInfo dataInfo;
	@Autowired
	private DataInfoSevc dis;
	private String icode;
	private String dcode;
	private String keyword;
	private List<DataInfo> listdi;
	public String add(){
		icode = String.valueOf(dis.getId());
		return "add";
	}
	public String save(){
		dis.save(dataInfo);
		return NONE;
	}
	public String find(){
		listdi = dis.findAll();
		return "find";
	}
	
	public String chaxun(){
		dataInfo = dis.find(dcode);
		icode = String.valueOf(dataInfo.getD_code());
		return "add";
	}
	public String delete(){
		dis.delete(dcode);
		return "delete";
	}
	public String findby(){
		listdi = dis.findBy(keyword);
		return "find";
	}
	
	
	
	
	
	
	
	
	
	
	@Override
	public DataInfo getModel() {
		return dataInfo;
	}
	public String getIcode() {
		return icode;
	}
	public void setIcode(String icode) {
		this.icode = icode;
	}
	public List<DataInfo> getListdi() {
		return listdi;
	}
	public void setListdi(List<DataInfo> listdi) {
		this.listdi = listdi;
	}
	public String getDcode() {
		return dcode;
	}
	public void setDcode(String dcode) {
		this.dcode = dcode;
	}
	public DataInfo getDataInfo() {
		return dataInfo;
	}
	public void setDataInfo(DataInfo dataInfo) {
		this.dataInfo = dataInfo;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
}
