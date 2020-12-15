package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.mappers.RepairModelToRepairMapper;
import com.projectFuture.propertyRepairWebApp.mappers.RepairToRepairModelMapper;
import com.projectFuture.propertyRepairWebApp.mappers.RepairsFormToRepairMapper;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class RepairServiceImpl implements RepairService{
    @Autowired
    private RepairRepository repairRepository;

    @Autowired
    private RepairToRepairModelMapper repairToRepairModelMapper;

    @Autowired
    private RepairsFormToRepairMapper repairsFormToRepairMapper;

    @Autowired
    private RepairModelToRepairMapper repairModelToRepairMapper;

    @Override
    public List<RepairModel> getAllRepairs() {

        return repairRepository
                .findAll()
                .stream()
                .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> getRepairsByUserId(Long id) {

        return repairRepository
                .findAllByUserId(id)
                .stream()
                .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> getRepairsByStatus(Status status) {
        return repairRepository
                .findAllByStatus(status)
                .stream()
                .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

    @Override
    public List<RepairModel> getRepairsByRepairType(RepairType repairType) {
        return repairRepository
            .findAllByRepairType(repairType)
            .stream()
            .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
            .collect(Collectors.toList());
    }

    @Override
    public boolean createRepair(RepairForm repairForm, User currentUser){
        try {
            Repair repair = this.repairsFormToRepairMapper.map(repairForm);
            repair.setUser(currentUser);
            repairRepository.save(repair);
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public RepairModel findRepairModelById(Long id){
        Repair repair = repairRepository.findById(id).orElse(new Repair());
        RepairModel repairModel = repairToRepairModelMapper.mapToRepairModel(repair);
        return repairModel;
    }

    @Override
    public boolean udpateRepair(RepairModel repairModel){
        try {
            Repair repair = repairRepository.findById(repairModel.getId()).get();
            repair = repairModelToRepairMapper.mapRepairModelToRepair(repairModel, repair);
            repair = repairRepository.save(repair);
            repairToRepairModelMapper.mapToRepairModel(repair);
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
}

