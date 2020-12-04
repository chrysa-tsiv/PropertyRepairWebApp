package com.projectFuture.propertyRepairWebApp.enums;

public enum PropertyType {
    DETACHED_HOUSE("ΜΟΝΟΚΑΤΟΙΚΕΙΑ"),
    MAISONETTE("ΜΕΖΟΝΕΤΑ"),
    BLOCK_OF_FLATS("ΠΟΛΥΚΑΤΟΙΚΕΙΑ");

    private String propertyType;

    PropertyType(String type) {
        this.propertyType = type;
    }

    public String getPropertyType() {
        return propertyType;
    }
}
