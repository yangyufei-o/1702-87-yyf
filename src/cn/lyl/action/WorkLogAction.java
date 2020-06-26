package cn.lyl.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.daoImpl.EmployeeDaoImpl;
import cn.lyl.entity.Customer;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.Worklog;
import cn.lyl.serviceImpl.WorklogSevc;


public class WorkLogAction extends BasicAction implements ModelDriven<Worklog> {
	@Resource(name="worklog")
	private Worklog worklog;
	@Autowired
	private EmployeeDaoImpl edi;
	
	@Autowired
	private WorklogSevc wls;
	
	
	private String username;
	private String userpart;
	private String lid;
	private List<Worklog> listwl = new ArrayList<Worklog>();
	
	private List<InfoItem> listl;
	private List<InfoItem> listt;
	private List<Customer> listc;
	@Override
	public Worklog getModel() {
		return worklog;
	}
	
	@Autowired
	private Employee employee;

	public String find(){
		employee = edi.find(super.getSesion().get("usercode").toString());
		super.getSesion().put("usernamewl", employee.getE_name());
		super.getSesion().put("userpartwl", employee.getDepartment().getD_name());
		listwl.clear();
		listwl.addAll(wls.findAll(employee));
		return "find";
	}
	public String add(){
		listl = wls.findItem("4");
		listt = wls.findItem("5");
		listc = wls.findCust();
		employee = edi.find(super.getSesion().get("usercode").toString());
		username = employee.getE_name();
		userpart = employee.getDepartment().getD_name();
		return "add";
	}
	
	public String save(){
		System.out.println(worklog.getL_cutsname());
		employee = edi.find(super.getSesion().get("usercode").toString());
		wls.save(worklog,employee);
		
		return "find";
	}
	
	public String chaxun(){
		listl = wls.findItem("4");
		listt = wls.findItem("5");
		listc = wls.findCust();
		
		worklog = wls.find(lid);
		employee = edi.find(super.getSesion().get("usercode").toString());
		username = employee.getE_name();
		userpart = employee.getDepartment().getD_name();
		return "update";
	}
	
	public String delete(){
		wls.delete(lid);
		return "delete";
	}
	
	public Worklog getWorklog() {
		return worklog;
	}

	public void setWorklog(Worklog worklog) {
		this.worklog = worklog;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpart() {
		return userpart;
	}

	public void setUserpart(String userpart) {
		this.userpart = userpart;
	}

	public List<Worklog> getListwl() {
		return listwl;
	}

	public void setListwl(List<Worklog> listwl) {
		this.listwl = listwl;
	}

	public String getLid() {
		return lid;
	}

	public void setLid(String lid) {
		this.lid = lid;
	}
	public List<InfoItem> getListl() {
		return listl;
	}
	public void setListl(List<InfoItem> listl) {
		this.listl = listl;
	}
	public List<InfoItem> getListt() {
		return listt;
	}
	public void setListt(List<InfoItem> listt) {
		this.listt = listt;
	}
	public List<Customer> getListc() {
		return listc;
	}
	public void setListc(List<Customer> listc) {
		this.listc = listc;
	}	
	
}
