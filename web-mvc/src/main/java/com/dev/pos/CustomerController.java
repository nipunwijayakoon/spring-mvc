package com.dev.pos;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @RequestMapping("/set-ui")
    public String setUi(Model model) {
        Customer customerEntity = new Customer();
        model.addAttribute("customer", customerEntity);
        return "customer-ui";
    }

    @RequestMapping("/register")
    public String register(
            @Valid @ModelAttribute("customer") Customer customer,
            BindingResult bindingResult) {
        if(bindingResult.hasErrors()){
            return "customer-ui";
        }
        return "customer-detail";
    }
}
