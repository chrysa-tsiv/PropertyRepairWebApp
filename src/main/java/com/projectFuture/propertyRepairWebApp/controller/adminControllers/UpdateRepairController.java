package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.mappers.RepairsToRepairFormMappper;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Component
public class UpdateRepairController {

    private static final String REPAIR_FORM = "repairForm";

    @Autowired
    private RepairService repairService;

    @Autowired
    private UserService userService;

    @GetMapping(value =  "/admin/user/{userId}/repair/{repairId}/update")
    public String editRepair(@PathVariable("repairId") Long repairId,@PathVariable("userId") Long userId,Model model){
        Repair repair = this.repairService.findRepair(repairId).orElse(new Repair());
        RepairForm repairForm = new RepairsToRepairFormMappper().map(repair);
        model.addAttribute(REPAIR_FORM,repairForm);
        model.addAttribute("repairId",repairId);
        model.addAttribute("userId",userId);
        return "editRepair";
    }

    @PostMapping(value = "/admin/user/{userId}/repair/updateRepair{repairId}")
    public String editRepair(Model model, @ModelAttribute(REPAIR_FORM) RepairForm repairForm, @PathVariable("repairId") Long repairId){
        System.out.println(repairId);
        User currentUser = userService.findUser(repairId);
        Repair repair = repairService.createRepair(repairForm,currentUser);

        return "editRepair";
    }
}
