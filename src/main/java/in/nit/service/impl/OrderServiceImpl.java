package in.nit.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IOrderDao;
import in.nit.model.Order;
import in.nit.service.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService{
	
	@Autowired
	private IOrderDao dao;

	@Transactional
	@Override
	public Integer saveOrder(Order order) {
		return dao.saveOrder(order);
	}

	@Transactional(readOnly = true)
	@Override
	public List<Order> getAllOrder() {
		List<Order> list = dao.getAllOrder();
		Collections.sort(list, (o1, o2)->o1.getOrderId()-o2.getOrderId());
		return list;
	}
	
	@Transactional
	@Override
	public void deleteOrder(Integer id) {
		dao.deleteOrder(id);		
	}

	
}
