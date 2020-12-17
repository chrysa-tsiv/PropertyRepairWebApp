package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class AdminHomeController {
    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    //Gets all the repairs with status ONGOING and appends them on the 1st table.
    //Then it gets all users and appends them to the 2nd table of the page adminHome
    @GetMapping({"/admin/home"})
    public String adminHome(Model model){
        model.addAttribute("repairs",repairService.getRepairsByStatus(Status.ONGOING));
        model.addAttribute("users",userService.getAllUsersByUserType(UserType.USER));
        return "adminHome";
    }

    //User-info controller
    @GetMapping({"/admin/{id}/view-user-info"})
    public String viewUserInfo(Model model, @PathVariable long id){
        model.addAttribute("user",userService.findUser(id).get());
        model.addAttribute("repairs",repairService.getRepairsByUserId(id));
        return "viewUserInfo";
    }
}
