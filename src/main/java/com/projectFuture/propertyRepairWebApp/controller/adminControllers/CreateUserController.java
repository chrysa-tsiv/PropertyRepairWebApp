package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.Arrays;

@Controller
public class CreateUserController {
    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    private static final String USER_FORM = "userForm";

    //returns the user creation page of admin, passing the enum values on the model.
    @GetMapping(value = "/admin/create-user")
    public String createUser(Model model) {
        model.addAttribute(USER_FORM, new UserForm());
        model.addAttribute("propertyTypes", Arrays.asList(PropertyType.values()));
        return "createUser";
    }


    //gets the input values from user form and calls the user service to insert the new user to the database
    //Depending if insert failed or succeed, inserts an appropriate message to redirectAttribute and redirects to admin home page.
    @PostMapping(value = "/admin/create-user")
    public String createUser(@ModelAttribute(USER_FORM) UserForm userform, RedirectAttributes redirectAttributes) {
        if (userService.insertUser(userform) == 1) {
            redirectAttributes.addFlashAttribute("rdrMsg", "User added successfully.");
        } else {
            redirectAttributes.addFlashAttribute("rdrMsg", "Something went wrong. User could not be added to the database. ");
        }
        return "redirect:/admin/home";
    }
}
