package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;

import java.util.List;
import java.util.Optional;

public interface UserService {

    Optional<User> findUser(Long id);

    List<User> getAllUsers();

    Optional<User> findUserByEmail(String email);

    Optional<User> findUserByVat(String vat);
}
