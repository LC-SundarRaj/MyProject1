package in.nit.dao;

import java.util.List;

import in.nit.model.Order;


public interface IOrderDao {
	Integer saveOrder(Order order);
	List<Order> getAllOrder();
	void deleteOrder(Integer id);
}
