package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import org.springframework.stereotype.Component;

    @Component
    public class RepairsToRepairFormMappper {

        public RepairForm map(Repair repair){

            RepairForm repairForm = new RepairForm();

            repairForm.setDate(repair.getRepairDate());
            repairForm.setAddress(repair.getAddress());
            repairForm.setCost(repair.getCost());
            repairForm.setDescription(repair.getDescription());
            repairForm.setRepairType(repair.getRepairType());
            repairForm.setStatus(repair.getStatus());

            return repairForm;
        }
}
