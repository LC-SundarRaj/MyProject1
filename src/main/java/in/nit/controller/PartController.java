package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.nit.model.Part;
import in.nit.model.Uom;
import in.nit.service.IPartService;
import in.nit.service.IUomService;

@Controller
@RequestMapping("/part")
public class PartController {

	@Autowired
	private IPartService service;
	
	@Autowired
	private IUomService uomService;
	
	//it'll show dropdown at UI (reg/edit)
	private void commonUI(Model model) {
		List<Uom> uomList = uomService.getAllUom();
		model.addAttribute("uomList", uomList);
	}
	
	@RequestMapping("/register")
	public String regPart(Model model) {
		//Form Backing Object
		model.addAttribute("part", new Part());
		
		//common Ui
		commonUI(model);
		return "PartRegister";
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String savePart(@ModelAttribute Part part, Model model) {
		
		Integer id= service.savePartData(part);
		model.addAttribute("message ", id+" part created ");
		//form backing object
		model.addAttribute("part", new Part());
		commonUI(model);
		return "partRegister";
	}
}
