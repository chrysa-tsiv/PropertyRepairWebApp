package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CreateRepairController {

    private static final String REPAIR_FORM="repairForm";

    @Autowired
    private RepairService repairService;

    @Autowired
    private UserService userService;

    @GetMapping("/admin/user/{id}/repair/Create")
    public String createRepair(Model model, @PathVariable("id") Long id){

        model.addAttribute(REPAIR_FORM,new RepairForm());
        return "createRepair";
    }

    @PostMapping("/createRepair{id}")
    public String createRepair(@ModelAttribute(REPAIR_FORM) RepairForm repairForm,@PathVariable("id") Long id){

        User currentUser = this.userService.findUser(id);
        Repair repair = this.repairService.createRepair(repairForm,currentUser);

        return "createRepair";
    }

}
