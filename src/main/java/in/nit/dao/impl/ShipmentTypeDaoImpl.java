package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;

@Repository
public class ShipmentTypeDaoImpl implements IShipmentTypeDao {
	@Autowired
	private HibernateTemplate ht;
	
	public Integer saveShipmentData(ShipmentType sob) {
		
		return (Integer) ht.save(sob);
	}

	public List<ShipmentType> getAllShipmentData() {
		return ht.loadAll(ShipmentType.class);
	}

	
	
	public void deleteShipmentType(Integer id) {
		/*
		 * ShipmentType s = new ShipmentType(); 
		 * s.setShipId(id); 
		 * ht.delete(s);
		 */
		
		/*
		ShipmentType st = new ShipmentType(id);
		ht.delete(st);
		*/
		
		ht.delete(new ShipmentType(id));
	}


	public ShipmentType getOneShipmentType(Integer id) {
		ShipmentType st = ht.get(ShipmentType.class, id);
		return st;
	}
	
	public void updateShipmentData(ShipmentType sob) {
		ht.update(sob);
	}

	
}
