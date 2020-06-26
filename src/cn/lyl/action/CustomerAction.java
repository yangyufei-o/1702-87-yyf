package cn.lyl.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.serviceImpl.CustomerSevc;

@Controller(value="customerAction")
public class CustomerAction<IntoItem> extends BasicAction implements ModelDriven<Customer>{
	
	@Resource(name="customer")
	private Customer customer;
	@Autowired
	private CustomerSevc cts;
	
	
	private List<Customer> listcustomer;
	private Map<String,String> mape;
	
	private List<InfoItem> listh;//客户类别6
	private List<InfoItem> listy;//行业类别7
	private List<InfoItem> listf;//所属地区9
	private List<InfoItem> listz;//客户状态18
	private List<InfoItem> listl;//客户类型8
	private List<InfoItem> listj;//成交几率10
	private List<Employee> lists;//所属员工
	
	private String ecode;
	private String ename;
	private String keyword;
	private String ccode;
	@Override	public Customer getModel() {
		return customer;
	}
	
	public String save(){
		cts.save(customer, ecode);
		return NONE;
	}

	public String find(){
		listcustomer = cts.findAll();
		return "find";
	}
	
	public String findby(){
		listcustomer = cts.findBy(keyword);
		return "find";
	}
	public String delete(){
		cts.delete(ccode);
		return "delete";
	}
	public String chaxun(){
		 listh = cts.findItem("6");
		 listy = cts.findItem("7");
		 listf = cts.findItem("9");
		 listz = cts.findItem("11");
		 listl = cts.findItem("8");
		 listj = cts.findItem("10");
		 lists = cts.findEmp();
		customer = cts.find(ccode);
		ename = customer.getEmployee().getE_name();
		ecode = customer.getEmployee().getE_code();
		return "update";
	}
	
	public String add(){
		 listh = cts.findItem("6");
		 listy = cts.findItem("7");
		 listf = cts.findItem("9");
		 listz = cts.findItem("11");
		 listl = cts.findItem("8");
		 listj = cts.findItem("10");
		 lists = cts.findEmp();
		return "update";
	}
	

	public List<Customer> getListcustomer() {
		return listcustomer;
	}

	public void setListcustomer(List<Customer> listcustomer) {
		this.listcustomer = listcustomer;
	}

	public String getEcode() {
		return ecode;
	}

	public void setEcode(String ecode) {
		this.ecode = ecode;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCcode() {
		return ccode;
	}

	public void setCcode(String ccode) {
		this.ccode = ccode;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Employee> getLists() {
		return lists;
	}

	public void setLists(List<Employee> lists) {
		this.lists = lists;
	}

	public List<InfoItem> getListh() {
		return listh;
	}

	public void setListh(List<InfoItem> listh) {
		this.listh = listh;
	}

	public List<InfoItem> getListy() {
		return listy;
	}

	public void setListy(List<InfoItem> listy) {
		this.listy = listy;
	}

	public List<InfoItem> getListf() {
		return listf;
	}

	public void setListf(List<InfoItem> listf) {
		this.listf = listf;
	}

	public List<InfoItem> getListz() {
		return listz;
	}

	public void setListz(List<InfoItem> listz) {
		this.listz = listz;
	}

	public List<InfoItem> getListl() {
		return listl;
	}

	public void setListl(List<InfoItem> listl) {
		this.listl = listl;
	}

	public List<InfoItem> getListj() {
		return listj;
	}

	public void setListj(List<InfoItem> listj) {
		this.listj = listj;
	}

	public Map<String, String> getMape() {
		return mape;
	}

	public void setMape(Map<String, String> mape) {
		this.mape = mape;
	}
	
}
