package com.projectFuture.propertyRepairWebApp.controller;

import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class UserHomeController {
    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    @GetMapping({"/user/home/{id}"})
    public String userHome(@PathVariable long id, Model model){
        model.addAttribute("repairs",repairService.getRepairsByUserId(id));
        return "userHome";
    }

}