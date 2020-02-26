package in.nit.service;

import java.util.List;

import in.nit.model.Order;

public interface IOrderService {
	Integer saveOrder(Order order);
	List<Order> getAllOrder();
	void deleteOrder(Integer id);
}
