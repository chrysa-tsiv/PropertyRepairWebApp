package com.projectFuture.propertyRepairWebApp.controller.adminControllers.RepairController;

import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.Date;

@Controller
public class SearchRepairController {

    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    @RequestMapping(value = "/admin/search-repair")
    public String searchRepair(Model model,
                               @RequestParam(value = "vat", required = false) String vat,
                               @RequestParam(value = "fromRepairDate", required = false) LocalDate fromRepairDate,
                               @RequestParam(value = "toRepairDate", required = false) LocalDate toRepairDate){
        if (vat != null && !vat.isEmpty()) {
            if(!vat.isEmpty() && fromRepairDate==null && toRepairDate==null) {
                UserModel user = userService.findUserByVat(vat);
                model.addAttribute("repairs",repairService.getRepairsByUserId(user.getId()));
                model.addAttribute("vat", vat);
            }
            else if (!vat.isEmpty() && fromRepairDate!=null && toRepairDate!=null){
//                UserModel user = userService.findUserByVat(vat);
//                model.addAttribute("vat", vat);

            }
            else {

            }
        }
        else {
            if (fromRepairDate!=null && toRepairDate!=null) {
                model.addAttribute("repairs", repairService.findByDateRange(fromRepairDate, toRepairDate));
                model.addAttribute("fromRepairDate", fromRepairDate);
                model.addAttribute("toRepairDate", toRepairDate);
            }
        }
        return "searchRepair";
    }

}
