package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IPartDao;
import in.nit.model.Part;

@Repository
public class PartDaoImpl implements IPartDao {

	@Autowired
	private HibernateTemplate ht;
	
	@Override
	public Integer savePartData(Part part) {
		return (Integer) ht.save(part);
	}

	@Override
	public List<Part> getAllPartData() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePartType(Integer id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Part getOnePartType(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updatePartData(Part part) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Object[]> getPartModeCount() {
		// TODO Auto-generated method stub
		return null;
	}

}
