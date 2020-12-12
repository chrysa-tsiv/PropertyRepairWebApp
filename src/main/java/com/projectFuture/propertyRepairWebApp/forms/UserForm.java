package com.projectFuture.propertyRepairWebApp.forms;

import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserForm {

    private String vat;

    private String firstName;

    private String lastName;

    private String address;

    private String phone;

    private String email;

    private String password;

    private String propertyType;
}
