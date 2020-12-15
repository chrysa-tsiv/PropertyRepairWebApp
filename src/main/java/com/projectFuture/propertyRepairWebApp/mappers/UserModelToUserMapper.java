package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.User;
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
        user.setUserType(userModel.getUserType());
        user.setPropertyType(userModel.getPropertyType());
        user.setId(userModel.getId());
        return user;
    }
}
