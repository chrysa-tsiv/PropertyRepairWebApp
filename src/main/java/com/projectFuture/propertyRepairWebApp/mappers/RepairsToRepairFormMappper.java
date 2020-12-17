package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import org.springframework.stereotype.Component;

    @Component
    public class RepairsToRepairFormMappper {

        public RepairForm map(Repair repair){

            RepairForm repairForm = new RepairForm();

            repairForm.setRepairDate(repair.getRepairDate());
            repairForm.setAddress(repair.getAddress());
            repair.setCost(Double.parseDouble(repairForm.getCost()));
            repairForm.setDescription(repair.getDescription());
            repair.setRepairType(RepairType.valueOf(repairForm.getRepairType()));
            repair.setStatus(Status.valueOf(repairForm.getStatus()));

            return repairForm;
        }
}
