package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.Uom;
import in.nit.service.IUomService;

@Controller
@RequestMapping("/uom")
public class UomController {
	
	@Autowired
	private IUomService service;

	@RequestMapping("/register")
	public String showRegPage(Model model) {
		model.addAttribute("uom", new Uom());
		return "UomRegister";
		
	}
	
	@RequestMapping(value="/save", method = RequestMethod.POST)
	public String saveUomData(@ModelAttribute Uom uom, Model model ) {
		
		Integer id = service.saveUom(uom);
		String message = "Uom-"+id+"saved";
		model.addAttribute("msg",  message);
		
		model.addAttribute("uom", new Uom());
		return "UomRegister";
		
	}
	
	@RequestMapping("/all")
	public String getAllUomData(Model model) {
		List<Uom> list = service.getAllUom();
		model.addAttribute("list",list);		
		
		return "UomData";
	}
	
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
}
