package com.olegsazonov.spring.mvc;

import lombok.*;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
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
    private int salary;
    private String department;
    private String carBrand;
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
