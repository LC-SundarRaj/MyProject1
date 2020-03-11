package in.nit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IPartDao;
import in.nit.model.Part;
import in.nit.service.IPartService;

@Service
public class PartServiceImpl implements IPartService {

	@Autowired
	private IPartDao dao;
	
	@Transactional
	public Integer savePartData(Part part) {
		return dao.savePartData(part);
	}

	@Transactional(readOnly = true)
	public List<Part> getAllPartData() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void deletePartType(Integer id) {
		// TODO Auto-generated method stub

	}

	@Transactional(readOnly = true)
	public Part getOnePartType(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void updatePartData(Part part) {
		// TODO Auto-generated method stub

	}

	@Transactional(readOnly = true)
	public List<Object[]> getPartModeCount() {
		// TODO Auto-generated method stub
		return null;
	}

}
