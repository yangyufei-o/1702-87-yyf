package cn.lyl.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;

import cn.lyl.entity.Department;
import cn.lyl.serviceImpl.DepartmentSevc;

@Controller(value="departmentAction")
public class DepartmentAction extends BasicAction implements ModelDriven<Department> {
	@Autowired
	private Department department;
	@Autowired
	private DepartmentSevc dpts;
	
	private List<Department> listd;
	
	private String dcode;
	
	private String keyword;
	
	private String bukeyong = "disabled='true'";
	@Override
	public Department getModel() {
		return department;
	}
	
	public String find(){
		String name = (String) super.getSesion().get("uname");
		listd = dpts.findall();
		return "find";
	}
	
	public String findby(){
		listd = dpts.findBy(keyword);
		return "find";
	}
	
	public String chaxun(){
		department = dpts.find(dcode);
		return "update";
	}
	
	public String delete(){
		department = dpts.find(dcode);
		dpts.delete(department);
		return "delete";
	}
	//执行保存或修改操作
	public String save(){
		dpts.saveAndUpdate(department);
		return NONE;
	}
	public List<Department> getListd() {
		return listd;
	}

	public Department getDepartment() {
		return department;
	}

	public String getDcode() {
		return dcode;
	}

	public void setDcode(String dcode) {
		this.dcode = dcode;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getBukeyong() {
		return bukeyong;
	}

	public void setBukeyong(String bukeyong) {
		this.bukeyong = bukeyong;
	}
	


	
}
