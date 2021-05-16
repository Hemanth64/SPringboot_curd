package com.springboot.login.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.springboot.login.model.User;
import com.springboot.login.web.DTO.UserRegistrationDto;

public interface UserService extends UserDetailsService {

	User save(UserRegistrationDto registrationDto);

}
