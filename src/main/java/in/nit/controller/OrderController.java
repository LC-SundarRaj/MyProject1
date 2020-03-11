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
import in.nit.model.ShipmentType;
import in.nit.service.IOrderService;


@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private IOrderService service;

	//1
	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("order", new Order());
		return "OrderRegister";
	}
	
	//2
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveUomData(@ModelAttribute Order order, Model model ) {
		
		Integer id = service.saveOrder(order);
		String message = "Order-"+id+"saved";
		model.addAttribute("msg",  message);
		model.addAttribute("order", new Order());
		return "OrderRegister";
		
	}
	
	//3
	@RequestMapping("/all")
	public String getAllOrderData(Model model) {
		List<Order> list = service.getAllOrder();
		model.addAttribute("list",list);		
		
		return "OrderData";
	}
	
	//4
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
	
	//5
	@RequestMapping("/edit")
	public String showEditPage(@RequestParam("oid")Integer id, Model model)
	{
		Order od = service.getOneOrder(id);
		model.addAttribute("order", od);
		
		return "Order";
	}
	
	//6
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateOrder(@ModelAttribute Order order,  Model model) {
		service.updateOrder(order);
		
		String message="Shipment - #"+ order.getOrderId()+ " updated";
		model.addAttribute("message", message);
		
		/**
		 * 1st way to go to data page after updating */
		List<Order> list = service.getAllOrder(); 
		model.addAttribute("list", list); 
		
		return "OrderData";
		 
		
		/** 2nd way to go to data page after updating */
		/*return "redirect:all";*/
	}
}
