package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.mappers.RepairToRepairModelMapper;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
public class UpdateRepairController {

    private static final String REPAIR_MODEL = "repairModel";

    private static final String REPAIRTYPES = "repairTypes";

    private static final String STATUS = "status";

    @Autowired
    private RepairService repairService;

    @GetMapping(value =  "/admin/user/repair/{repairId}/update")
    public String editRepair(@PathVariable("repairId") Long repairId,Model model){
        Repair repair = this.repairService.findRepair(repairId).orElse(new Repair());
        RepairModel repairModel = new RepairToRepairModelMapper().mapToRepairModel(repair);
        model.addAttribute(REPAIR_MODEL,repairModel);
        model.addAttribute(REPAIRTYPES, RepairType.values());
        model.addAttribute(STATUS, Status.values());

        return "editRepair";
    }

    @PostMapping(value = "/admin/user/repair/updateRepair")
    public String editRepair(@Valid @ModelAttribute(REPAIR_MODEL) RepairModel repairModel){

        Repair repair = repairService.udpateRepair(repairModel);

        return "redirect:/admin/home";
    }
}
