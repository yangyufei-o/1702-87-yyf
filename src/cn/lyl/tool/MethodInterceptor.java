package cn.lyl.tool;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

import cn.lyl.action.LoginAction;

public class MethodInterceptor extends MethodFilterInterceptor{
	String operator;

	@Override
	protected String doIntercept(ActionInvocation arg0) throws Exception {
		operator = LoginAction.operator;
		if(operator!=""&&operator!=null){		
			return arg0.invoke();
		}else{
			return "pleaselogin";
		}
	}

}
