package com.windmill.oauth2.controller;

import com.windmill.oauth2.model.UserPojo;
import com.windmill.oauth2.repository.UserRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    private final UserRepository userRepository;

    UserController(UserRepository repository) {
        this.userRepository = repository;
    }

    // Aggregate root
    // tag::get-aggregate-root[]
    @GetMapping("/users")
    List<UserPojo> all() {
        return userRepository.findAll();
    }

    @GetMapping("/users/{id}")
    UserPojo one(@PathVariable String id) {

        return userRepository.findByUsername(id);
    }

}
