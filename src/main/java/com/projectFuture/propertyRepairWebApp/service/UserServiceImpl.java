package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import com.projectFuture.propertyRepairWebApp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;

    @Override
    public User findUser(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email).orElse(null);
    }

    @Override
    public User findUserByVat(String vat) {
        return userRepository.findByVat(vat).orElse(null);
    }

    @Override
    public int insertUser(UserForm userform) {
        try {
            User newUser = new User();
            newUser.setVat(userform.getVat());
            newUser.setFirstName(userform.getFirstName());
            newUser.setLastName(userform.getLastName());
            newUser.setAddress(userform.getAddress());
            newUser.setPhone(userform.getPhone());
            newUser.setEmail(userform.getEmail());
            newUser.setPassword(userform.getPassword());
            newUser.setUserType(UserType.USER);
            newUser.setPropertyType(PropertyType.getPropertyTypeFromString(userform.getPropertyType()));
            userRepository.save(newUser);
            return 1;
        }catch (Exception ex){
            return -1;
        }
    }

    @Override
    public List<User> getAllUsersByUserType(UserType userType) {
        return userRepository.findAllByUserType(userType).orElse(new ArrayList<>());
    }

    @Override
    public User findUserByVatAndEmail(String vat, String email) {
        return userRepository.findByVatAndEmail(vat,email).orElse(null);
    }
}
