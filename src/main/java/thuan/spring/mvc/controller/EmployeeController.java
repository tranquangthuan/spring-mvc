package thuan.spring.mvc.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import thuan.spring.mvc.model.Employee;

@RequestMapping("/employees")
@Controller
public class EmployeeController {

	List<Employee> listEmployee = new ArrayList<Employee>();

	@RequestMapping(value = "all", method = RequestMethod.GET)
	public String getAll(Model model) {
		if (CollectionUtils.isEmpty(listEmployee)) {
			Employee employee1 = new Employee(1, "Thuan", "VN", "Nam");
			Employee employee2 = new Employee(2, "Tran 2", "VN", "Nam");
			Employee employee3 = new Employee(3, "Nguyen 3", "VN", "Nam");
			Employee employee4 = new Employee(4, "Thuan 4", "VN", "Nam");
			Employee employee5 = new Employee(5, "Thuan 5", "VN", "Nam");
			Employee employee6 = new Employee(6, "Thuan 6", "VN", "Nam");
			listEmployee.add(employee1);
			listEmployee.add(employee2);
			listEmployee.add(employee3);
			listEmployee.add(employee4);
			listEmployee.add(employee5);
			listEmployee.add(employee6);
		}

		model.addAttribute("listEmployee", listEmployee);
		return "employees";
	}

	@RequestMapping(value = "/editemp/{id}", method = RequestMethod.GET)
	public String edit(Model model, @PathVariable String id) {
		System.out.println("Edit Id = " + id);

		model.addAttribute("listEmployee", listEmployee);
		return "employees";
	}

	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public String delete(Model model, @PathVariable String id) {
		System.out.println("Delete Id = " + id);
		listEmployee.remove(0);

		model.addAttribute("listEmployee", listEmployee);
		return "redirect:/employees/all";
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Model model, @RequestParam(value = "searchText", required = false) String searchText) {

		if (!StringUtils.isEmpty(searchText)) {
			List<Employee> listEmployeeFilter = listEmployee.stream()
					.filter(e -> e.getName().toUpperCase().contains(searchText.toUpperCase()))
					.collect(Collectors.toList());
			model.addAttribute("listEmployee", listEmployeeFilter);
		} else {
			model.addAttribute("listEmployee", listEmployee);
		}

		return "employees";
	}

}
