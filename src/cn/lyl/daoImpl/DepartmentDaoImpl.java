package cn.lyl.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.lyl.action.LoginAction;
import cn.lyl.dao.IDepartmentDao;
import cn.lyl.entity.Department;
import cn.lyl.entity.SystemLog;
import cn.lyl.serviceImpl.SystemSevc;

@Repository(value="departmentDaoImpl")
public class DepartmentDaoImpl extends CommonDaoImpl<Department> implements IDepartmentDao {	
	@Resource(name="systemLog")
	private SystemLog sl;
	@Autowired
	private SystemSevc ss;
	@Autowired
	private Department tempd;
	@Autowired
	private DataInfoDaoImpl didi;
	private List<Department> listd;
	@Override
	public void save(Department entity) {

		ht.save(entity);
	}

	@Override
	public void update(Department entity) {
		ht.update(entity);
	}
	
	public void saveAndUpdate(Department entity){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("保存了:部门  "+entity.getD_name());
		ss.save(sl);
		ht.saveOrUpdate(entity);
	}
	@Override
	public Department find(String arg) {	
		return ht.get(Department.class, arg);
	}
	
	public List<Department> findAll(){
		listd = (List<Department>) ht.find("from Department");
		if(listd.size()<1){
			didi.chushihua();
			tempd.setD_code("ceshi");
			tempd.setD_name("测试");
			this.save(tempd);
			listd = (List<Department>) ht.find("from Department");
		}else{
			;
		}
		return listd;
		
	}
	
	public List<Department> findBy(String arg){
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("搜索了:部门  "+"关键字为: "+arg);
		ss.save(sl);
		String keyword = "%"+arg+"%";
		return (List<Department>) ht.find("from Department where d_code like ? or d_name like ? or d_helpcode like ? or d_principal like ?",keyword,keyword,keyword,keyword);
	}
	@Override
	public void delete(Department entity) {
		sl.setS_time(sl.time());
		sl.setS_operator(LoginAction.operator);
		sl.setS_info("删除了:部门  "+entity.getD_name());		
		ss.save(sl);
		ht.delete(entity);
	}
}










