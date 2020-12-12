package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Component
public class RepairsFormToRepairMapper {

    public Repair map(RepairForm repairForm){
        Repair repair = new Repair();
        repair.setDate(repairForm.getDate());
        repair.setAddress(repairForm.getAddress());
        repair.setCost(repairForm.getCost());
        repair.setDescription(repairForm.getDescription());
        repair.setRepairType(repairForm.getRepairType());
        repair.setStatus(repairForm.getStatus());
        return repair;
    }

}
