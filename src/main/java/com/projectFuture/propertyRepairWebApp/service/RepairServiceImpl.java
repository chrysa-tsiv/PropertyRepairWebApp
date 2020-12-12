package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.mappers.RepairsFormToRepairMapper;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.repository.RepairRepository;
import lombok.Builder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RepairServiceImpl implements RepairService{

    @Autowired
    private RepairRepository repairRepository;

    @Autowired
    private RepairsFormToRepairMapper repairsFormToRepairMapper;

    @Override
    public Optional<Repair> findRepair(Long id) {
        return repairRepository.findById(id);
    }

    @Override
    public List<Repair> getAllRepairs() {
        return repairRepository.findAll();
    }

    @Override
    public List<Repair> getRepairsByUserId(Long id) {
        return repairRepository.findAllByUserId(id);
    }

    @Override
    public List<Repair> getRepairsByStatus(Status status) {
        return repairRepository.findAllByStatus(status);
    }

    @Override
    public List<Repair> getRepairsByRepairType(RepairType repairType) {
        return repairRepository.findAllByRepairType(repairType);
    }

    @Override
    public Repair createRepair(RepairForm repairForm, User currentUser){
        Repair repair = this.repairsFormToRepairMapper.map(repairForm);
        repair.setUser(currentUser);
        return repairRepository.save(repair);
    }

    @Override
    public  Repair updateRepair(RepairModel repairModel){
        Repair repair = repairRepository.findById(repairModel.getId()).get();
        //update
        return repair;
    }
}
