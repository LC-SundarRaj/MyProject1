package in.nit.service;

import java.util.List;

import in.nit.model.Order;
import in.nit.model.ShipmentType;

public interface IOrderService {
	Integer saveOrder(Order order);
	List<Order> getAllOrder();
	void deleteOrder(Integer id);
	
	Order getOneOrder(Integer id);
	void updateOrder(Order omOb);
}
