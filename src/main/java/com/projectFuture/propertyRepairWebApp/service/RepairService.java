package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import java.time.LocalDate;
import java.util.List;

public interface RepairService {


    List<RepairModel> getAllRepairs();

    List<RepairModel> getRepairsByUserId(Long id);

    List<RepairModel> getRepairsByStatus(Status status);

    List<RepairModel> getRepairsByRepairType(RepairType repairType);

    boolean createRepair(RepairForm repairForm, UserModel user);

    List<RepairModel> findByDateRange(LocalDate fromRepairDate, LocalDate toRepairDate);

    //    List<RepairModel> findByVatAndDateRange(String vat, LocalDate fromRepairDate, LocalDate toRepairDate);

    boolean updateRepair(RepairModel repairModel);

    RepairModel findRepairModelById(Long id);
}
