package com.projectFuture.propertyRepairWebApp.enums;

public enum RepairType {
    PAINTING("ΒΑΨΙΜΟ"),
    INSULATION("ΜΟΝΩΣΗ"),
    FRAMES("ΚΟΥΦΩΜΑΤΑ"),
    PLUMBING("ΥΔΡΑΥΛΙΚΕΣ ΕΡΓΑΣΙΕΣ"),
    ELECTRICAL_WORKS("ΗΛΕΚΤΡΟΛΟΓΙΚΕΣ ΕΡΓΑΣΙΕΣ");

    private String repairType;
    RepairType(String repairType){this.repairType=repairType;}

    public String getRepairType() {
        return repairType;
    }
}
