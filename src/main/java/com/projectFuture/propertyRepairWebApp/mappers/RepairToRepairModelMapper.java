package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairToRepairModelMapper {

    public RepairModel mapToRepairModel(Repair repair){
        RepairModel repairModel = new RepairModel();
        repairModel.setId(repair.getId());
        repairModel.setAddress(repair.getAddress());
        repairModel.setRepairDate(repair.getRepairDate());
        repairModel.setCost(repair.getCost().toString());
        repairModel.setDescription(repair.getDescription());
        repairModel.setStatus(repair.getStatus());
        repairModel.setRepairType(repair.getRepairType());
        repairModel.setUser(repair.getUser());         //new line to add user on model since 1.8
        return repairModel;
    }

}
