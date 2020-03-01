package in.nit.dao;

import java.util.List;

import in.nit.model.ShipmentType;

public interface IShipmentTypeDao {
	Integer saveShipmentData(ShipmentType sob); 
	List<ShipmentType> getAllShipmentData();
	void deleteShipmentType(Integer id);
	
	ShipmentType getOneShipmentType(Integer id);
	void updateShipmentData(ShipmentType sob);
	
	public List<Object[]> getShipmentModeCount();
}
