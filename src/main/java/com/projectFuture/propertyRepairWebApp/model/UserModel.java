package com.projectFuture.propertyRepairWebApp.model;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserModel {
    private String vat;
    private String firstName;
    private String lastName;
    private String address;
    private String phone;
    private String email;
    private UserType userType;
    private PropertyType propertyType;
    private Long id;
}
