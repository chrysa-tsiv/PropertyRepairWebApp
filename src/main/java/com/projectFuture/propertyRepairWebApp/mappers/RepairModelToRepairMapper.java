package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import org.springframework.stereotype.Component;

@Component
public class RepairModelToRepairMapper {

    public Repair mapRepairModelToRepair(RepairModel repairModel,Repair repair){

        repair.setAddress(repairModel.getAddress());
        repair.setCost(Double.parseDouble(repairModel.getCost()));
        repair.setRepairDate(repairModel.getRepairDate());
        repair.setDescription(repairModel.getDescription());
        repair.setStatus(Status.valueOf(repairModel.getStatus()));
        repair.setRepairType(RepairType.valueOf(repairModel.getRepairType()));
        return repair;
    }

}
