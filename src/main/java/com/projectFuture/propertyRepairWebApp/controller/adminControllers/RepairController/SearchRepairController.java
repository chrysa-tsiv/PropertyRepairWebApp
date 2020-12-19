package com.projectFuture.propertyRepairWebApp.controller.adminControllers.RepairController;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import com.projectFuture.propertyRepairWebApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("admin")
public class SearchRepairController {

    @Autowired
    private UserService userService;
    @Autowired
    private RepairService repairService;

    @RequestMapping(value = "/search-repair")
    public String searchRepair(Model model,
                               @RequestParam(value = "vat", required = false) String vat,
                               @RequestParam(value = "fromRepairDate", required = false) String fromRepairDate,
                               @RequestParam(value = "toRepairDate", required = false) String toRepairDate){
        if (vat != null && !vat.isEmpty()) {
            if(fromRepairDate.isEmpty() && toRepairDate.isEmpty()) {
                UserModel user = userService.findUserByVat(vat);
                model.addAttribute("repairs", repairService.getRepairsByUserId(user.getId()));
                model.addAttribute("vat", vat);
            }
            else if (!vat.isEmpty() && fromRepairDate!=null && toRepairDate!=null){
                UserModel user = userService.findUserByVat(vat);
                List<RepairModel> repairList = repairService.findByDateRange(LocalDate.parse(fromRepairDate), LocalDate.parse(toRepairDate));
                List<RepairModel> repairs = new ArrayList<RepairModel>();
                for(RepairModel repair : repairList) {
                    if(repair.getUser().getId() == user.getId()){
                        repairs.add(repair);
                    }
                }
                model.addAttribute("repairs", repairs);
                model.addAttribute("vat", vat);
                model.addAttribute("fromRepairDate", fromRepairDate);
                model.addAttribute("toRepairDate", toRepairDate);
            }
        }
        else {
            if (fromRepairDate!=null && toRepairDate!=null) {
                model.addAttribute("repairs", repairService.findByDateRange(LocalDate.parse(fromRepairDate), LocalDate.parse(toRepairDate)));
                model.addAttribute("fromRepairDate", fromRepairDate);
                model.addAttribute("toRepairDate", toRepairDate);
            }
        }
        return "searchRepair";
    }

}
