package learning.spring.mvc;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeController {
	 private List<Employee> employeeList = new ArrayList<>();
	@RequestMapping("/")
	public String greetings()
	{
		System.out.println("MyController.greetings()");
		return "employee-form";
	}
	@GetMapping("/view-all")
    public String viewAllEmployees(Model model) {
        model.addAttribute("employees", employeeList);
        return "all-employees";
    }
	 @GetMapping("/employee-form")
	    public String showEmployeeForm() {
	        return "employee-form"; // employee-form.jsp
	    }
  
	@PostMapping("/login")
	public String login(@RequestParam("email") String email,
	                    @RequestParam("password") String password,
	                    Model model) {

	    // Simple login check (you can replace with DB later)
	    if (email != null && !email.isEmpty() && password != null && !password.isEmpty()) {

	        model.addAttribute("email", email);

	        return "admin";   // redirect to admin page after login
	    } 
	    else {
	        model.addAttribute("error", "Invalid email or password");
	        return "login";
	    }
	}

	@PostMapping("/register")
	public String formData(@RequestParam("id")int id,@RequestParam(value = "name")String name,
			@RequestParam("email")String email,@RequestParam("password")String password,
			@RequestParam("department")String department,@RequestParam("age") int age ,Model model)
	{
		System.out.println("MyController.formData");
		
		Employee employee = new Employee(id, name,email, password,department, age);
		
		model.addAttribute("emp", employee);
		
		
		return "employee-profile";
	}
}