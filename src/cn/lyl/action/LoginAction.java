package cn.lyl.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import cn.lyl.daoImpl.EmployeeDaoImpl;
import cn.lyl.entity.Employee;
import cn.lyl.entity.SystemLog;
import cn.lyl.entity.UserRole;
import cn.lyl.serviceImpl.SystemSevc;
import cn.lyl.serviceImpl.UserRoleSevc;
@Controller(value="login")
public class LoginAction extends BasicAction {
	
	@Autowired
	private EmployeeDaoImpl edi;
	@Autowired
	private Employee employee;
	
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	
	@Autowired
	private UserRoleSevc urs;
	@Autowired
	private UserRole userRole;
	
	private String ecode;
	private String Username;
	private String Password;
	private String ceshi;
	public static String operator;
	private String temproleinfo;
	
	public String  login() throws Exception {
		
		if(Username!=null&&Username!=""){
			System.out.println("有用户正在登录");
			System.out.println(Username+"---"+Password);
			employee = edi.check(Username, Password);
			System.out.println(employee);
			super.getSesion().put("user", employee);
		}else{
			employee =(Employee) super.getSesion().get("user");
		}

		if(employee==null){
			return "pleaselogin";
		}else{
			super.getSesion().put("usercode", employee.getE_code());
			operator = employee.getE_name();
			sl.setS_time(sl.time());
			sl.setS_operator(LoginAction.operator);
			sl.setS_info(employee.getE_name()+" 登录了系统");
			ss.save(sl);
			temproleinfo="onclick='jueseguanli()'";
			userRole = urs.find(employee.getE_extend4());//根据角色码创建角色
			return SUCCESS;
		}
	}
	public String checklogin(){
		return SUCCESS;
	}

	public String loginout(){
		super.getSesion().clear();
		LoginAction.operator="";
		return "tologin";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	public String getCeshi() {
		return ceshi;
	}

	public void setCeshi(String ceshi) {
		this.ceshi = ceshi;
	}

	public UserRole getUserRole() {
		return userRole;
	}

	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}

	public static String getOperator() {
		return operator;
	}

	public static void setOperator(String operator) {
		LoginAction.operator = operator;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getTemproleinfo() {
		return temproleinfo;
	}
	public void setTemproleinfo(String temproleinfo) {
		this.temproleinfo = temproleinfo;
	}

}
