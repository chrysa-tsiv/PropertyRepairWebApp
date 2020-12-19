package com.projectFuture.propertyRepairWebApp.controller.adminControllers.UserController;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

@Controller
@RequestMapping("admin")
public class EditUserController {
    private static final String VALIDATION_ERRORS="validationError";

    private static final String PROPERTY_TYPES = "propertyTypes";

    private static final String USER_MODEL = "userModel";

    private static final String STATUS = "status";


    @Autowired
    private UserService userService;


    @GetMapping(value = "/{id}/edit-user")
    public String editUser(@PathVariable Long id, Model model) {
        UserModel userModel = userService.findUser(id).get();
        model.addAttribute(USER_MODEL, userModel);
        model.addAttribute(PROPERTY_TYPES, PropertyType.values());
        return "editUser";
    }


    @PostMapping(value = "/user/edit")
    public String editUser(@ModelAttribute(USER_MODEL) @Valid UserModel userModel, BindingResult bindingResult,
                           RedirectAttributes redirectAttributes,Model model) {
        if(bindingResult.hasErrors()){
            model.addAttribute(VALIDATION_ERRORS,"an error has occured");
            model.addAttribute(PROPERTY_TYPES,  PropertyType.values());
            model.addAttribute(STATUS, Status.values());
            return "editUser";
        }
        boolean flag = userService.updateUser(userModel);
        if(flag){
            redirectAttributes.addFlashAttribute("rdrMsg", "User updated successfully.");
        }else{
            redirectAttributes.addFlashAttribute("rdrMsg", "Could not update user.");
        }
        return "redirect:/admin/home";
    }

}
