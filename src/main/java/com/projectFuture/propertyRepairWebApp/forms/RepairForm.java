package com.projectFuture.propertyRepairWebApp.forms;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.RepairType;
import com.projectFuture.propertyRepairWebApp.enums.Status;

import javax.persistence.*;
import java.sql.Date;

public class RepairForm {

    private Date date;
    private Status status;
    private Double cost;
    private String address;
    private String description;
    private RepairType repairType;

    public RepairForm(Date date, Status status, double cost, String address, String description, RepairType repairType) {
        this.date = date;
        this.status = status;
        this.cost = cost;
        this.address = address;
        this.description = description;
        this.repairType = repairType;

    }

    public RepairForm() {}

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public RepairType getRepairType() {
        return repairType;
    }

    public void setRepairType(RepairType repairType) {
        this.repairType = repairType;
    }
}