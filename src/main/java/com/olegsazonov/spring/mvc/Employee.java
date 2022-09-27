package com.olegsazonov.spring.mvc;

import lombok.*;

import javax.validation.constraints.*;
import java.util.HashMap;
import java.util.Map;

@Getter
@Setter
@ToString
@EqualsAndHashCode
public class Employee {
    @Size(min = 2, max = 16, message = "name must be between 2 and 16 symbols")
    private String name;
//    @NotEmpty(message = "surname is required field")
    @NotBlank(message = "surname is required field")
    private String surname;
    @Min(value = 300, message = "must be greater than 299")
    @Max(value = 5000, message = "must be less than 5001")
    private int salary;
    private String department;
    private String carBrand;
    @Pattern(regexp = "\\d{3}-\\d{2}-\\d{2}", message = "please use pattern XXX-XX-XX")
    private String phoneNumber;
    private String[] languages;
    private Map<String,String> mapLanguages;
    private Map<String, String> carBrands;
    private Map<String, String> departments;

    public Employee() {
        departments = new HashMap<>();
        departments.put("Information Technology", "IT");
        departments.put("Human Resources", "HR");
        departments.put("Sales", "Sales");

        carBrands = new HashMap<>();
        carBrands.put("Audi", "Audi");
        carBrands.put("Mercedes-Benz", "MB");
        carBrands.put("BMW", "BMW");

        mapLanguages = new HashMap<>();
        mapLanguages.put("English", "EN");
        mapLanguages.put("French", "FR");
        mapLanguages.put("Deutsch", "DE");
    }
}
