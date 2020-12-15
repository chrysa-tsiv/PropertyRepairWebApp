package com.projectFuture.propertyRepairWebApp.mappers;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import org.springframework.stereotype.Component;

@Component
public class UserToUserModelMapper {

    public UserModel map(User user) {
        UserModel userModel = new UserModel();
        userModel.setVat(user.getVat());
        userModel.setFirstName(user.getFirstName());
        userModel.setLastName(user.getLastName());
        userModel.setAddress(user.getAddress());
        userModel.setPhone(user.getPhone());
        userModel.setEmail(user.getEmail());
        userModel.setUserType(user.getUserType());
        userModel.setPropertyType(user.getPropertyType());
        userModel.setId(user.getId());
        return userModel;
    }
}
