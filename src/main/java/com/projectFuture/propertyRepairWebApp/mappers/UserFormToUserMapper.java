package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import org.springframework.stereotype.Component;

@Component
public class UserFormToUserMapper {

    public User map(UserForm userForm) {
        User newUser = new User();
        newUser.setVat(userForm.getVat());
        newUser.setFirstName(userForm.getFirstName());
        newUser.setLastName(userForm.getLastName());
        newUser.setAddress(userForm.getAddress());
        newUser.setPhone(userForm.getPhone());
        newUser.setEmail(userForm.getEmail());
        newUser.setPassword(userForm.getPassword());
        newUser.setUserType(UserType.USER);
        newUser.setPropertyType(PropertyType.getPropertyTypeFromString(userForm.getPropertyType()));
        return newUser;
    }
}
