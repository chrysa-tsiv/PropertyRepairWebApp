package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User findUser(Long id);

    List<User> getAllUsers();

    User findUserByEmail(String email);

    User findUserByVat(String vat);

    int insertUser(UserForm userform);

    List<User> getAllUsersByUserType(UserType userType);
}
