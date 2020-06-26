package cn.lyl.serviceImpl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.lyl.entity.Employee;
import cn.lyl.entity.WorkPlane;

@Transactional
@Service(value="workPlaneSevc")
public class WorkPlaneSevc {

	
	public void save(WorkPlane entity1, Employee entity2) {
		// TODO Auto-generated method stub
		
	}

}
