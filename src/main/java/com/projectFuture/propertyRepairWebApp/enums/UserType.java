package com.projectFuture.propertyRepairWebApp.enums;


public enum UserType {
    USER("user"),
    ADMIN("admin");

    private String type;

    UserType(String type){this.type =type;}
    public String getUserRole() { return type; }
}
