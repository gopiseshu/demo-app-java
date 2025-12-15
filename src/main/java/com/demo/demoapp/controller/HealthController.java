package com.demo.demoapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {

    @GetMapping("/health")
    public String health() {
        return "UP";
    }

    @GetMapping("/hello")
    public String hello() {
        return "Hello from Spring Boot DevOps Demo";
    }
}
