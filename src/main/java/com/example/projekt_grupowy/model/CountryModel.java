package com.example.projekt_grupowy.model;


import javax.persistence.*;

@Entity
@Table(name = "Kraj")
public class CountryModel {
    @Id
    @GeneratedValue
    @Column(name = "id_kraj", nullable = false)
    private int countryId;
    @Column(name = "nazwa", nullable = false)
    private String countryName;


    public CountryModel(String countryName) {
        this.countryName = countryName;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String name) {
        this.countryName = name;
    }

}
