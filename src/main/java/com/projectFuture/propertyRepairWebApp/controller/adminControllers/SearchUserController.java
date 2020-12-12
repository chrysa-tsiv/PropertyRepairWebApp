package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchUserController {

    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    //returns searchUser page
    @RequestMapping(value = "/admin/search-user")
    public String searchUser(Model model, @RequestParam(value = "vat", required = false) String vat, @RequestParam(value = "email", required = false) String email) {
        if (vat != null && email != null) {
            if (!vat.isEmpty()) {
                model.addAttribute("user", userService.findUserByVat(vat));
                model.addAttribute("vat", vat);
            }
            if (!email.isEmpty()) {
                model.addAttribute("user", userService.findUserByEmail(email));
                model.addAttribute("email", email);
            }
        }
        return "searchUser";
    }

}


