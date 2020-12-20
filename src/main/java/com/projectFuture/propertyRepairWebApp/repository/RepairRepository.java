package com.projectFuture.propertyRepairWebApp.repository;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.time.LocalDate;
import java.util.List;

@Repository
public interface RepairRepository extends JpaRepository<Repair,Long> {
    List<Repair> findAllByUserId(Long id);

    List<Repair> findAllByStatus(Status status);

    List<Repair> findAllByRepairType(RepairType repairType);

    List<Repair> findByRepairDateBetween(LocalDate fromRepairDate, LocalDate toRepairDate);

//    List<Repair> findByVatAndDateRange(String vat, LocalDate fromRepairDate, LocalDate toRepairDate);

}
