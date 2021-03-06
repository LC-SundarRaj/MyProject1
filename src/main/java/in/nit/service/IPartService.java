package in.nit.service;

import java.util.List;

import in.nit.model.Part;

public interface IPartService {

	Integer savePartData(Part part); 
	List<Part> getAllPartData();
	void deletePartType(Integer id);
	
	Part getOnePartType(Integer id);
	void updatePartData(Part part);
	
	public List<Object[]> getPartModeCount();
}
