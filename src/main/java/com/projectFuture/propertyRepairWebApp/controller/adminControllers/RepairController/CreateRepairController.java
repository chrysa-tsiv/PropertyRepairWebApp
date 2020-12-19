package com.projectFuture.propertyRepairWebApp.controller.adminControllers.RepairController;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.net.BindException;

@Controller
@RequestMapping("admin")
public class CreateRepairController {

    private static final String REPAIR_FORM="repairForm";

    private static final String VALIDATION_ERRORS="validationError";
    @Autowired
    private RepairService repairService;

    @Autowired
    private UserService userService;

    @GetMapping("/{id}/create-repair")
    public String createRepair(Model model, @PathVariable("id") Long id){

        model.addAttribute(REPAIR_FORM,new RepairForm());
        return "createRepair";
    }

    @PostMapping("/{id}/create-repair")
    public String createRepair(Model model,@ModelAttribute(REPAIR_FORM) @Valid RepairForm repairForm,BindingResult bindingResult,
                               @PathVariable("id") Long id, RedirectAttributes redirectAttributes) {
        if(bindingResult.hasErrors()){
            model.addAttribute(VALIDATION_ERRORS,"an error has occured");
            model.addAttribute(REPAIR_FORM,repairForm);
            return "createRepair";
        }
        UserModel currentUser = userService.findUser(id).get();
        if (this.repairService.createRepair(repairForm,currentUser)) {
                redirectAttributes.addFlashAttribute("rdrMsg", "Repair added successfully.");
        }
        else {
                redirectAttributes.addFlashAttribute("rdrMsg", "Something went wrong. Repair could not be added to the database. ");
        }
        return "redirect:/admin/home";

    }
}
