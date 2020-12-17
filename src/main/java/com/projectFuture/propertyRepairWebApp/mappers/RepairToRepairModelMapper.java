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
        repairModel.setStatus(repair.getStatus().toString());
        repairModel.setRepairType(repair.getRepairType().toString());
        return repairModel;
    }

}
