package com.projectFuture.propertyRepairWebApp.controller.adminControllers;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.logging.Logger;

@Controller
public class EditUserController {
    private static final String PROPERTY_TYPES = "propertyTypes";
    private Logger logger;

    @Autowired
    private UserService userService;


    @GetMapping(value = "/admin/{id}/edit-user")
    public String editUser(@PathVariable Long id, Model model) {
        UserModel userModel = userService.findUser(id).get();
        model.addAttribute("user", userModel);
        model.addAttribute(PROPERTY_TYPES, PropertyType.values());
        return "editUser";
    }


    @PostMapping(value = "/admin/user/edit")
    public String editBook(UserModel userModel,RedirectAttributes redirectAttributes) {
        if(userService.updateUser(userModel)){
            redirectAttributes.addFlashAttribute("rdrMsg", "User updated successfully.");
        }else{
            redirectAttributes.addFlashAttribute("rdrMsg", "Could not update user.");
        }
        return "redirect:/admin/home";
    }

}
