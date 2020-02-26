package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IOrderDao;
import in.nit.model.Order;

@Repository
public class OrderDaoImpl implements IOrderDao{
	
	@Autowired
	private HibernateTemplate ht;

	@Override
	public Integer saveOrder(Order order) {
		return (Integer)ht.save(order);	}

	@Override
	public List<Order> getAllOrder() {
		List<Order> list = ht.loadAll(Order.class);
		return list;	}

	@Override
	public void deleteOrder(Integer id) {
		ht.delete(new Order(id));
	}
	
	


}
	