package in.nit.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.ShipmentType;
import in.nit.service.IShipmentTypeService;
import in.nit.util.ShipmentTypeUtil;
import in.nit.view.ShipmentTypeExcelView;
//import in.nit.view.ShipmentTypePdfView;
import in.nit.view.ShipmentTypePdfView;

@Controller
@RequestMapping("/shipment")
public class ShipmentTypeController {
	
	@Autowired
	private IShipmentTypeService service;
	@Autowired
	private ServletContext context;
	@Autowired
	private ShipmentTypeUtil util;
	
	//1
	@RequestMapping("/register")
	public String showRegPage(Model model) {
		//form backing object
		model.addAttribute("shipmentType", new ShipmentType());
		return "ShipmentTypeRegister";
	}
	
	//2
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveShipment(@ModelAttribute ShipmentType smType, Model model) {
		Integer id = service.saveShipmentData(smType);
		String msg = "Shipment Type '"+id+"' saved";
		model.addAttribute("message", msg);
		model.addAttribute("shipmentType", new ShipmentType());
		return "ShipmentTypeRegister";
	}
	
	//3
	@RequestMapping("/all")
	public String getAllShipmentData(Model model, @RequestParam(value="id", required = false)Integer id) {
		
		List<ShipmentType> list = service.getAllShipmentData();
		model.addAttribute("list", list);	
		
		return "ShipmentData";
		
	}
	
	
	//4
	@RequestMapping("/delete")
	public String deleteShipmentType(@RequestParam("sid")Integer id, Model model) {
		service.deleteShipmentType(id);
		String msg="Shipment - #"+id+" Deleted";
		model.addAttribute("message", msg);
		
		//Fetch New Data
		List<ShipmentType> list = service.getAllShipmentData();
		model.addAttribute("list", list);
		return "ShipmentData";
		
	}
	
	//5
	@RequestMapping("/edit")
	public String showEditPage(@RequestParam("sid")Integer id, Model model)
	{
		ShipmentType st = service.getOneShipmentType(id);
		model.addAttribute("shipmentType", st);
			
		return "ShipmentTypeEdit";
	}
	
	//6
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateShipmentType(@ModelAttribute ShipmentType shipmentType,  Model model) {
		service.updateShipmentData(shipmentType);
		
		String message="Shipment - #"+ shipmentType.getShipId()+ " updated";
		model.addAttribute("message", message);
		
		/**
		 * 1st way to go to data page after updating */
		List<ShipmentType> list = service.getAllShipmentData(); 
		model.addAttribute("list", list); 
		
		return "ShipmentData";
		 
		
		/** 2nd way to go to data page after updating */
		/*return "redirect:all";*/
	}
	
	
	//7
	@RequestMapping("/view")
	public String getOneShipmentType(@RequestParam("sid")Integer id, Model model) {
		ShipmentType st = null;
		
		st = service.getOneShipmentType(id);
		model.addAttribute("ob", st);
		
		return "ShipmentTypeView";
	}
	
	//8
	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView mv = null;
		List<ShipmentType> list = null;
		ShipmentType st = null;
		mv = new ModelAndView();
		mv.setView(new ShipmentTypeExcelView());
		
		
		//fetch data
		if(id==null) {		
			list = service.getAllShipmentData();
			mv.addObject("list",list);
		}
		//fetch one record
		else {
			st = service.getOneShipmentType(id);
			mv.addObject("list", Arrays.asList(st));
		}
		return mv;
	}
	
	//9
	@RequestMapping("/pdf")
	public ModelAndView showPdf(@RequestParam(value="id", required = false)Integer id) {
		ModelAndView mv = null;
		List<ShipmentType> list;
		ShipmentType st;
		
		mv = new ModelAndView();
		mv.setView(new ShipmentTypePdfView());
		
		//fetch data
		if(id==null) {
			list = service.getAllShipmentData();
			mv.addObject("list", list);
		}
		//get one record
		else {
			st = service.getOneShipmentType(id);
			mv.addObject("list", Arrays.asList(st));
		}
		return mv;
	}	

	//10. JFree Chart
	@RequestMapping("/charts")
	public String showCharts() {
		List<Object[]> list = service.getShipmentModeCount();
		String path = context.getRealPath("/");
		util.generatePie(path, list);
		util.generateBar(path, list);
		return "ShipmentTypeCharts";
	}
}
