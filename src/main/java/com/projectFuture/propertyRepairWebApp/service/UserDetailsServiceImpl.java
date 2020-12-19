package com.projectFuture.propertyRepairWebApp.service;

import com.projectFuture.propertyRepairWebApp.domain.User;
import com.projectFuture.propertyRepairWebApp.model.UserResponse;
import com.projectFuture.propertyRepairWebApp.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.Arrays;

public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        User user = userRepository.findByEmail(email).orElseThrow(() -> new UsernameNotFoundException(email));

        return new UserResponse(user.getEmail(), user.getPassword(), Arrays.asList(new SimpleGrantedAuthority(user.getUserType().name())));
    }
}
