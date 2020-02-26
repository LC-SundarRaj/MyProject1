package in.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/whuser")
public class WhUserTypeController {

	@RequestMapping("/register")
	public String showRegPage() {
		return "WHUserType";
	}
}
