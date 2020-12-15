package com.projectFuture.propertyRepairWebApp.service;


import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;

import java.util.List;
import java.util.Optional;

public interface RepairService {


    List<RepairModel> getAllRepairs();

    List<RepairModel> getRepairsByUserId(Long id);

    List<RepairModel> getRepairsByStatus(Status status);

    List<RepairModel> getRepairsByRepairType(RepairType repairType);

    boolean createRepair(RepairForm repairForm,User user);

    boolean udpateRepair(RepairModel repairModel);

    RepairModel findRepairModelById(Long id);
}
