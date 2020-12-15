package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
public class UpdateRepairController {

    private static final String REPAIR_MODEL = "repairModel";

    private static final String REPAIRTYPES = "repairTypes";

    private static final String STATUS = "status";

    @Autowired
    private RepairService repairService;

    @GetMapping(value = "/admin/{repairId}/edit-repair")
    public String editRepair(@PathVariable("repairId") Long repairId, Model model) {
        RepairModel repairModel = repairService.findRepairModelById(repairId);
        model.addAttribute(REPAIR_MODEL, repairModel);
        model.addAttribute(REPAIRTYPES, RepairType.values());
        model.addAttribute(STATUS, Status.values());
        return "editRepair";
    }

    @PostMapping(value = "/admin/edit-repair")
    public String editRepair(@Valid @ModelAttribute(REPAIR_MODEL) RepairModel repairModel, RedirectAttributes redirectAttributes) {
        boolean flag = repairService.udpateRepair(repairModel);
        if (flag) {
            redirectAttributes.addFlashAttribute("rdrMsg", "Repair added successfully.");
        } else {
            redirectAttributes.addFlashAttribute("rdrMsg", "Something went wrong. Repair could not be added to the database. ");
        }

        return "redirect:/admin/home";
    }
}