package com.projectFuture.propertyRepairWebApp.enums;


public enum UserRole {
    USER("user"),
    ADMIN("admin");

    private String role;

    UserRole(String role){this.role=role;}
    public String getUserRole() { return role; }
}
