package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import org.springframework.stereotype.Component;

@Component
public class UserModelToUserMapper {

    public User map(UserModel userModel) {
        User user = new User();
        user.setVat(userModel.getVat());
        user.setFirstName(userModel.getFirstName());
        user.setLastName(userModel.getLastName());
        user.setAddress(userModel.getAddress());
        user.setPhone(userModel.getPhone());
        user.setEmail(userModel.getEmail());
        user.setUserType(UserType.valueOf(userModel.getUserType()));
        user.setPropertyType(PropertyType.valueOf(userModel.getPropertyType()));
        user.setId(userModel.getId());
        return user;
    }
}
