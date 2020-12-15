package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import com.projectFuture.propertyRepairWebApp.model.UserModel;

import java.util.List;
import java.util.Optional;

public interface UserService {

    Optional<UserModel> findUser(Long id);

    List<UserModel> getAllUsers();

    UserModel findUserByEmail(String email);

    UserModel findUserByVat(String vat);

    boolean insertUser(UserForm userform);

    boolean updateUser(UserModel bookModel);

    List<UserModel> getAllUsersByUserType(UserType userType);

    UserModel findUserByVatAndEmail(String vat,String email);
}
