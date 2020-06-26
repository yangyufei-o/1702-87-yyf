package cn.lyl.serviceImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkTask;

@Transactional
@Service(value="workTaskSevc")
public class WorkTaskSevc {

	public void save(WorkTask entity1, Employee entity2) {
		
		
	}

}
