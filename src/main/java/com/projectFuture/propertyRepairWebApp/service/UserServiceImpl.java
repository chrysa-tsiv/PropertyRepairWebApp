package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.enums.PropertyType;
import com.projectFuture.propertyRepairWebApp.enums.UserType;
import com.projectFuture.propertyRepairWebApp.forms.UserForm;
import com.projectFuture.propertyRepairWebApp.mappers.UserFormToUserMapper;
import com.projectFuture.propertyRepairWebApp.mappers.UserToUserModelMapper;
import com.projectFuture.propertyRepairWebApp.model.UserModel;
import com.projectFuture.propertyRepairWebApp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserFormToUserMapper userFormToUserMapper;
    @Autowired
    private UserToUserModelMapper userToUserModelMapper;

    @Override
    public Optional<UserModel> findUser(Long id) {
        return userRepository
                .findById(id)
                .map(book -> userToUserModelMapper.map(book));
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
    public boolean insertUser(UserForm userForm) {
        try {
            userRepository.save(userFormToUserMapper.map(userForm));
            return true;
        }catch (Exception ex){
            return false;
        }
    }

    @Override
    public boolean updateUser(UserModel userModel) {
        try{
            User originalUser = userRepository.findById(userModel.getId()).get();
            originalUser.setFirstName(userModel.getFirstName());
            originalUser.setLastName(userModel.getLastName());
            originalUser.setVat(userModel.getVat());
            originalUser.setPhone(userModel.getPhone());
            originalUser.setAddress(userModel.getAddress());
            originalUser.setEmail(userModel.getEmail());
            originalUser.setPropertyType(userModel.getPropertyType());
            userRepository.save(originalUser);
            return true;
        }catch (Exception e){
            return false;
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
