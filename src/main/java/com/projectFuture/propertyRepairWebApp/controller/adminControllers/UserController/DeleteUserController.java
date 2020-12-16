package com.projectFuture.propertyRepairWebApp.controller.adminControllers.UserController;

import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class DeleteUserController {

    @Autowired
    private UserService userService;

    @GetMapping(value="/admin/{id}/delete-user")
    public String deleteUser(@PathVariable long id, RedirectAttributes redirectAttributes){
        if(userService.deleteById(id)){
            redirectAttributes.addFlashAttribute("rdrMsg","User successfully deleted.");
        }else{
            redirectAttributes.addFlashAttribute("rdrMsg","User could not be deleted.");
        }
        return "redirect:/admin/home";
    }
}
