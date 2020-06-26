package cn.lyl.action;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.entity.InfoItem;
import cn.lyl.entity.LinkMan;
import cn.lyl.serviceImpl.LinkManSevc;


public class LinkManAction extends BasicAction implements ModelDriven<LinkMan> {
	
	@Autowired
	private LinkMan linkMan;
	@Autowired
	private LinkManSevc lms;
	
	private List<LinkMan> listlm = new ArrayList<LinkMan>();
	private List<InfoItem> listj ;
	private String linkccode;
	private String keyword;
	private String lcode;
	@Override
	public LinkMan getModel() {
		return linkMan;
	}
	
	public String save(){
		lms.save(linkMan, super.getSesion().get("linkmans_ccode").toString());
		return NONE;
	}
	
	
	public String add(){
		listj = lms.findItem("1");
		return "update";
	}

	@SuppressWarnings("unchecked")
	public String find(){
		super.getSesion().put("linkmans_ccode", linkccode);
		listlm.clear();
		listlm.addAll(lms.findAll(linkccode));
		return "find";
	}
	public String findall(){
		listlm.clear();
		listlm.addAll(lms.findAll(super.getSesion().get("linkmans_ccode").toString()));
		return "find";
	}
	public String findby(){
		listlm.clear();
		listlm = lms.findby(keyword, super.getSesion().get("linkmans_ccode").toString());
		return "find";
	}
	public String chaxun(){
		listj = lms.findItem("1");
		linkMan = lms.find(lcode);
		return "update";
	}
	public String delete(){
		lms.delete(lcode);
		return "delete";
	}
	
	public String getLcode() {
		return lcode;
	}

	public void setLcode(String lcode) {
		this.lcode = lcode;
	}

	public List<LinkMan> getListlm() {
		return listlm;
	}

	public void setListlm(List<LinkMan> listlm) {
		this.listlm = listlm;
	}

	public String getLinkccode() {
		return linkccode;
	}
	
	public void setLinkccode(String linkccode) {
		this.linkccode = linkccode;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public LinkMan getLinkMan() {
		return linkMan;
	}

	public void setLinkMan(LinkMan linkMan) {
		this.linkMan = linkMan;
	}

	public List<InfoItem> getListj() {
		return listj;
	}

	public void setListj(List<InfoItem> listj) {
		this.listj = listj;
	}
	
	
	
}
