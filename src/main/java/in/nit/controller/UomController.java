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
import in.nit.model.Uom;
import in.nit.service.IUomService;
import in.nit.util.UomUtil;
import in.nit.view.UomExcelView;
import in.nit.view.UomPdfView;

@Controller
@RequestMapping("/uom")
public class UomController {
	
	@Autowired
	private IUomService service;
	@Autowired
	private ServletContext context;
	@Autowired
	private UomUtil util;

	//1
	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("uom", new Uom());
		return "UomRegister";
		
	}
	
	//2
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveUomData(@ModelAttribute Uom uom, Model model ) {
		
		Integer id = service.saveUom(uom);
		String message = "Uom-"+id+"saved";
		model.addAttribute("message",  message);
		
		model.addAttribute("uom", new Uom());
		return "UomRegister";
		
	}
	
	//3
	@RequestMapping("/all")
	public String getAllUomData(Model model) {
		List<Uom> list = service.getAllUom();
		model.addAttribute("list",list);		
		
		return "UomData";
	}
	
	//4
	@RequestMapping("/delete")
	public String deleteUomData(@RequestParam("uomId")Integer id, Model model) {
		service.deleteUom( id);
		String msg = "Uom-"+id+" deleted";
		model.addAttribute("message", msg);
		
		//fetch new data
		List<Uom> list = service.getAllUom();
		model.addAttribute("list", list);
		return "UomData";
		
	}
	
	//5
	@RequestMapping("/edit")
	public String showEditPage(@RequestParam("uomId")Integer id, Model model)
	{
		Uom uob = service.getOneUom(id);
		model.addAttribute("uom", uob);
		
		return "UomEdit";
	}
	
	//6
		@RequestMapping(value = "/update", method = RequestMethod.POST)
		public String updateUom(@ModelAttribute Uom uom,  Model model) {
			service.updateUom(uom);
			
			String message="Shipment - #"+ uom.getUid()+ " updated";
			model.addAttribute("message", message);
			
			List<Uom> list = service.getAllUom(); 
			model.addAttribute("list", list); 
			
			return "UomData";
		}
		
		//7
		@RequestMapping("/view")
		public String getOneUom(@RequestParam("uomId")Integer id, Model model) {
			Uom uom = null;
			
			uom = service.getOneUom(id);
			model.addAttribute("ob", uom);
			
			return "UomView";
		}
		
		//8
		@RequestMapping("/excel")
		public ModelAndView showExcel(@RequestParam(value="id", required = false)Integer id) {
			ModelAndView mv = null;
			List<Uom> list = null;
			Uom u = null;
			mv = new ModelAndView();
			mv.setView(new UomExcelView());
			
			
			//fetch data
			if(id==null) {		
				list = service.getAllUom();
				mv.addObject("list",list);
			}
			//fetch one record
			else {
				u = service.getOneUom(id);
				mv.addObject("list", Arrays.asList(u));
			}
			return mv;
		}
		
		//9
		@RequestMapping("/pdf")
		public ModelAndView showPdf(@RequestParam(value="id", required = false)Integer id) {
			ModelAndView mv = null;
			List<Uom> list;
			Uom u;
			
			mv = new ModelAndView();
			mv.setView(new UomPdfView());
			
			//fetch data
			if(id==null) {
				list = service.getAllUom();
				mv.addObject("list", list);
			}
			//get one record
			else {
				u = service.getOneUom(id);
				mv.addObject("list", Arrays.asList(u));
			}
			return mv;
		}	

		//10. JFree Chart
		@RequestMapping("/charts")
		public String showCharts() {
			List<Object[]> list = service.getUomModeCount();
			String path = context.getRealPath("/");
			util.generatePie(path, list);
			util.generateBar(path, list);
			return "UomCharts";
		}

	
}
