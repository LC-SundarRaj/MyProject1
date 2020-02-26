package in.nit.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;
import in.nit.service.IShipmentTypeService;

@Service
public class ShipmentTypeServiceImpl implements IShipmentTypeService {
	
	@Autowired
	private IShipmentTypeDao dao;
	
	@Transactional
	public Integer saveShipmentData(ShipmentType sob) {
		return dao.saveShipmentData(sob);
	}

	@Transactional(readOnly = true)
	public List<ShipmentType> getAllShipmentData() {
		List<ShipmentType> list = dao.getAllShipmentData();
		Collections.sort(list,(o1, o2)->o1.getShipId()-o2.getShipId());
		return list;
	}
	
	@Transactional
	public void deleteShipmentType(Integer id) {
		dao.deleteShipmentType(id);
	}

	@Transactional(readOnly = true)
	public ShipmentType getOneShipmentType(Integer id) {
		return dao.getOneShipmentType(id);
	}
	
	@Transactional
	public void updateShipmentData(ShipmentType sob) {
		dao.updateShipmentData(sob);
	}
	 
}
