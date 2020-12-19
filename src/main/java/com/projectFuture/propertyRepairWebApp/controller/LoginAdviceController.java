package com.projectFuture.propertyRepairWebApp.controller;

import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice(basePackages = "com.projectFuture.propertyRepairWebApp.controller") //, basePackageClasses = {ExceptionThrowingController.class}
public class LoginAdviceController {

    @Autowired
    private UserService userService;

    // Add loggedInUser attribute to the models of the controllers.
    @ModelAttribute
    public void globalAttributes(Model model, HttpServletRequest request) {
        UserModel loggedInUser = userService.findUserByEmail(SecurityContextHolder.getContext().getAuthentication().getName());

        model.addAttribute("loggedInUser",loggedInUser);
    }

}
