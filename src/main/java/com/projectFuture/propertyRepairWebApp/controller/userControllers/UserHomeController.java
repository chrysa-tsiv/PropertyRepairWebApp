package com.projectFuture.propertyRepairWebApp.controller.userControllers;

import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserHomeController {
    @Autowired
    private RepairService repairService;

    @GetMapping({"/user/home"})
    public String userHome(Model model){
        UserModel loggedInUser = (UserModel) model.getAttribute("loggedInUser");
        model.addAttribute("repairs",repairService.getRepairsByUserId(loggedInUser.getId()));
        return "userHome";
    }

}