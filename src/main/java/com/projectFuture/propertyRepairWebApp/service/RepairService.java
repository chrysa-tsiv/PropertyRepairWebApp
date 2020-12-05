package com.projectFuture.propertyRepairWebApp.service;


import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;

import java.util.List;
import java.util.Optional;

public interface RepairService {

    Optional<Repair> findRepair(Long id);

    List<Repair> getAllRepairs();

    List<Repair> getRepairsByUserId(Long id);

    List<Repair> getRepairsByStatus(Status status);

    List<Repair> getRepairsByRepairType(RepairType repairType);


}
