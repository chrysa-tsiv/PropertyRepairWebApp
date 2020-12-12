package com.projectFuture.propertyRepairWebApp.enums;

public enum PropertyType {
    DETACHED_HOUSE,
    MAISONETTE,
    BLOCK_OF_FLATS;

//    private String propertyType;
//
//    PropertyType(String type) {
//        this.propertyType = type;
//    }
//
//    public String getPropertyType() {
//        return propertyType;
//    }

    public static PropertyType getPropertyTypeFromString(String value) {
        if (value.equals(DETACHED_HOUSE)) {
            return PropertyType.DETACHED_HOUSE;
        } else if (value.equals(MAISONETTE)) {
            return PropertyType.MAISONETTE;
        }else{
            return PropertyType.BLOCK_OF_FLATS;
        }
    }
}
