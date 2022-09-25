package com.olegsazonov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView(){
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(){
    return "ask-emp-details-view";
    }

//    @RequestMapping("/showDetails")
//    public String showEmployeeDetails(){
//        return "show-emp-details-view";
//    }

    @RequestMapping("/showDetails")
    public String showEmployeeDetails(HttpServletRequest request, Model model){

        String empName = request.getParameter("employeeName");
//        Here I have got parameter(name) from form of ask-type-details-view.jsp

        empName = "Mr." + empName;
        model.addAttribute("nameAttribute", empName);
//        Here I have updated parameter(name) and added attribute name "nameAttribute"
//        It's name I can use in show-emp-details-view.jsp as ${nameAttribute}

        return "show-emp-details-view";
    }
}
