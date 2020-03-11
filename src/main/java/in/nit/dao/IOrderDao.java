package in.nit.dao;

import java.util.List;

import in.nit.model.Order;
import in.nit.model.ShipmentType;


public interface IOrderDao {
	Integer saveOrder(Order order);
	List<Order> getAllOrder();
	void deleteOrder(Integer id);
	
	Order getOneOrder(Integer id);
	void updateOrder(Order omOb);
}
