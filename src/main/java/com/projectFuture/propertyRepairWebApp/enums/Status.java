package com.projectFuture.propertyRepairWebApp.enums;

public enum Status {
    PENDING("ΣΕ ΑΝΑΜΟΝΗ"),
    ONGOING("ΣΕ ΕΞΕΛΙΞΗ"),
    FINISHED("ΟΛΟΚΛΗΡΩΘΗΚΕ");

    private String status;
    Status(String status){this.status=status;}

    public String getStatus() {
        return status;
    }
}
