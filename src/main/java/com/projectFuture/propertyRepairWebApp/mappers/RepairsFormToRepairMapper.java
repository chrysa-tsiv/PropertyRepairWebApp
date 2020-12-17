package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.service.RepairService;
import org.springframework.stereotype.Component;

@Component
public class RepairsFormToRepairMapper {

    public Repair map(RepairForm repairForm){
        Repair repair = new Repair();
        repair.setRepairDate(repairForm.getRepairDate());
        repair.setAddress(repairForm.getAddress());
        repair.setCost(Double.parseDouble(repairForm.getCost()));
        repair.setDescription(repairForm.getDescription());
        repair.setRepairType(RepairType.valueOf(repairForm.getRepairType()));
        repair.setStatus(Status.valueOf(repairForm.getStatus()));
        return repair;
    }

}
