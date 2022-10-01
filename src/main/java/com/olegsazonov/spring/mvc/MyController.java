package com.olegsazonov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
//@RequestMapping("/employee")
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model){

        model.addAttribute("employee", new Employee());

    return "ask-emp-details-view";
    }

    @GetMapping(path = "/showDetails")
    public String showEmployeeDetails(@Valid @ModelAttribute("employee") Employee emp
    , BindingResult bindingResult){

        if(bindingResult.hasErrors()){
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view";
        }

//        String name = emp.getName();
//        emp.setName("Mr." + name);
//
//        int salary = emp.getSalary();
//        emp.setSalary((int) (salary + (salary*0.1)));

    }
}
