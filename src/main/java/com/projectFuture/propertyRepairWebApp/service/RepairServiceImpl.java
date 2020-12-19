package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.Repair;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;
import com.projectFuture.propertyRepairWebApp.forms.RepairForm;
import com.projectFuture.propertyRepairWebApp.mappers.RepairModelToRepairMapper;
import com.projectFuture.propertyRepairWebApp.mappers.RepairToRepairModelMapper;
import com.projectFuture.propertyRepairWebApp.mappers.RepairsFormToRepairMapper;
import com.projectFuture.propertyRepairWebApp.mappers.UserModelToUserMapper;
import com.projectFuture.propertyRepairWebApp.model.RepairModel;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.repository.RepairRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
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

    @Autowired
    private UserModelToUserMapper userModelToUserMapper;

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
    public boolean createRepair(RepairForm repairForm,UserModel currentUser){
        try {
            Repair repair = this.repairsFormToRepairMapper.map(repairForm);
            repair.setUser(userModelToUserMapper.map(currentUser));
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
    public boolean deleteById(long id) {
        try{
            repairRepository.deleteById(id);
            return true;
        }catch(Exception ex){
            return false;
        }
    }

    @Override
    public List<RepairModel> findByDateRange(LocalDate fromRepairDate, LocalDate toRepairDate) {
        return repairRepository
                .findByRepairDateBetween(fromRepairDate, toRepairDate)
                .stream()
                .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
                .collect(Collectors.toList());
    }

//    @Override
//    public List<RepairModel> findByVatAndDateRange(String vat, LocalDate fromRepairDate, LocalDate toRepairDate) {
//        return repairRepository
//                .findByVatAndDateRange(vat, fromRepairDate, toRepairDate)
//                .stream()
//                .map(repair -> repairToRepairModelMapper.mapToRepairModel(repair))
//                .collect(Collectors.toList());
//    }

    @Override
    public boolean updateRepair(RepairModel repairModel){
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

