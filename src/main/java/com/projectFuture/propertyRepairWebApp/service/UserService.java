package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import com.projectFuture.propertyRepairWebApp.model.UserModel;

import java.util.List;
import java.util.Optional;

public interface UserService {

    //User findUser(Long id);
    Optional<UserModel> findUser(Long id);

    List<User> getAllUsers();

    User findUserByEmail(String email);

    User findUserByVat(String vat);

    int insertUser(UserForm userform);

    void updateUser(UserModel bookModel);

    List<User> getAllUsersByUserType(UserType userType);

    User findUserByVatAndEmail(String vat,String email);
}
