package cn.lyl.junit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Controller(value="testAct")
public class TestAct extends ActionSupport{
	@Autowired
	TestServ testServ;
	@Override
	public String execute() throws Exception {
		testServ.testdao();
		return NONE;
	}
	public void setTestServ(TestServ testServ) {
		this.testServ = testServ;
	}
	
}
