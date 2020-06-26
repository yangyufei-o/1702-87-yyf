package cn.lyl.daoImpl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.IWorklogDao;
import cn.lyl.entity.Employee;
import cn.lyl.entity.InfoItem;
import cn.lyl.entity.SystemLog;
import cn.lyl.entity.Worklog;
import cn.lyl.serviceImpl.SystemSevc;
@Repository(value="worklogDaoImpl")
public class WorklogDaoImpl extends UnusualDaoImpl<Worklog, Employee> implements IWorklogDao {
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;

	private Worklog worklog;
	private List<Worklog> listwl;
	@Override
	public void save(Worklog entity1, Employee entity2) {
		if(entity1.getL_id()==null){
			entity1.setL_id(this.getId());
			entity1.setEmployee(entity2);
			hbt.save(entity1);
		}
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("保存了:工作日志  "+"姓名:"+entity2.getE_name()+" 日志主题:"+entity1.getL_theme());
		ss.save(sl);
		entity1.setEmployee(entity2);
		hbt.saveOrUpdate(entity1);
	}

	@Override
	public void update(Worklog entity1, Employee entity2) {
		entity1.setEmployee(entity2);
		entity2.getSetWorklog().add(entity1);
		hbt.update(entity2);
	}
	
	public Set<Worklog> findAll(Employee arg) {
		return arg.getSetWorklog();
	}
	public int getId(){
		listwl = (List<Worklog>) hbt.find("from Worklog order by ? asc", "l_id");
		if(listwl.size()<1){
			return 1;
		}else{
			worklog = listwl.get(listwl.size()-1);
			return worklog.getL_id()+1;
		}	
	}

	@Override
	public void delete(Worklog worklog) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("删除了日志:"+worklog.getL_theme()+" 日志主体:"+worklog.getL_name());
		ss.save(sl);
		hbt.delete(worklog);
	}

	@Override
	public Worklog find(String arg) {
		return hbt.get(Worklog.class, Integer.parseInt(arg));
	}

	public Worklog getWorklog() {
		return worklog;
	}

	public void setWorklog(Worklog worklog) {
		this.worklog = worklog;
	}

}
