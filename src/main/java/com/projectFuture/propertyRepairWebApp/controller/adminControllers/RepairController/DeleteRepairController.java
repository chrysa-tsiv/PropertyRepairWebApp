package com.projectFuture.propertyRepairWebApp.controller.adminControllers.RepairController;

import com.projectFuture.propertyRepairWebApp.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DeleteRepairController {

    @Autowired
    private RepairService repairService;

    @GetMapping(value = "/admin/{id}/delete-repair")
    public String deleteRepair(@PathVariable long id, RedirectAttributes redirectAttributes) {
        if(repairService.deleteById(id)){
            redirectAttributes.addFlashAttribute("rdrMsg","Repair successfully deleted.");
        }else{
            redirectAttributes.addFlashAttribute("rdrMsg","Repair could not be deleted.");
        }
        return "redirect:/admin/home";
    }
}
