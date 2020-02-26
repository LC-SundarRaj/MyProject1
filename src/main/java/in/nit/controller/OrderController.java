package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.Order;
import in.nit.service.IOrderService;


@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private IOrderService service;

	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("order", new Order());
		return "OrderRegister";
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveUomData(@ModelAttribute Order order, Model model ) {
		
		Integer id = service.saveOrder(order);
		String message = "Order-"+id+"saved";
		model.addAttribute("msg",  message);
		model.addAttribute("order", new Order());
		return "OrderRegister";
		
	}
	
	@RequestMapping("/all")
	public String getAllOrderData(Model model) {
		List<Order> list = service.getAllOrder();
		model.addAttribute("list",list);		
		
		return "OrderData";
	}
	
	@RequestMapping("/delete")
	public String deleteOrderData(@RequestParam("oid")Integer id, Model model) {
		service.deleteOrder( id);
		String msg = "Order-"+id+" deleted";
		model.addAttribute("message", msg);
		
		//fetch new data
		List<Order> list = service.getAllOrder();
		model.addAttribute("list", list);
		return "OrderData";
		
	}
}
