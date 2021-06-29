package com.example.springboottestproject;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringboottestprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringboottestprojectApplication.class, args);
	}
	
	@Value("${age}")
	String age;
	
	@GetMapping("/greeting")
	public String greeting(@RequestParam(value = "name", defaultValue = "World") String name) {
		String value = "value passed as "+name+" age: "+age;
		 System.out.println(value);
		 System.out.println(age);
		 return value;
	}
	

}
