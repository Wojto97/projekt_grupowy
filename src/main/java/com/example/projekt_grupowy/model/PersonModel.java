package com.example.projekt_grupowy.model;

import org.springframework.lang.Nullable;

import javax.persistence.*;

@Entity
@Table(name = "Osoba")
public class PersonModel {

    @Id
    @GeneratedValue
    @Column(name = "id_osoba", nullable = false)
    private int personId;
    @Column(name = "id_rola", nullable = false)
    private int personRoleId;
    @Column(name = "id_kraj", nullable = false)
    private int personCountryId;
    @Column(name = "id_platnosc", nullable = false)
    private int personPaymentId;
    @Column(name = "imie", nullable = false)
    private String name;
    @Column(name = "drugie_imie")
    private String secondName;
    @Column(name = "nazwisko", nullable = false)
    private String lastName;
    @Column(name = "pesel", nullable = false)
    private String peselNumber;
    @Column(name = "ulica", nullable = true)
    private String street;
    @Column(name = "miejscowosc", nullable = false)
    private String city;
    @Column(name = "email", nullable = false)
    private String email;
    @Column(name = "haslo", nullable = false)
    private String password;
    @Column(name = "aktywny", nullable = false)
    private boolean aktywny;
    @Column(name = "ilosc_nieudanych_prob_logowania", nullable = false)
    private int failedLoginsCount;

    public PersonModel(int personRoleId,
                       int personCountryId,
                       int personPaymentId,
                       String name,
                       @Nullable String secondName,
                       String lastName,
                       String peselNumber,
                       String street,
                       String city,
                       String email,
                       String password,
                       boolean aktywny,
                       int failedLoginsCount
    ) {
        this.personRoleId = personRoleId;
        this.personCountryId = personCountryId;
        this.personPaymentId = personPaymentId;
        this.name = name;
        this.secondName = secondName;
        this.lastName = lastName;
        this.peselNumber = peselNumber;
        this.street = street;
        this.city = city;
        this.email = email;
        this.password = password;
        this.aktywny = aktywny;
        this.failedLoginsCount = failedLoginsCount;
    }

    public void setPersonRoleId(int personRoleId) {
        this.personRoleId = personRoleId;
    }

    public void setPersonCountryId(int personCountryId) {
        this.personCountryId = personCountryId;
    }

    public void setPersonPaymentId(int personPaymentId) {
        this.personPaymentId = personPaymentId;
    }

    public void setPersonName(String name) {
        this.name = name;
    }

    public void setPersonSecondName(@Nullable String secondName) {
        this.secondName = secondName;
    }

    public void setPersonLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setPersonPeselNumber(String peselNumber) {
        this.peselNumber = peselNumber;
    }

    public void setPersonStreet(String street) {
        this.street = street;
    }

    public void setPersonCity(String city) {
        this.city = city;
    }

    public void setPersonEmail(String email) {
        this.email = email;
    }

    public void setPersonPassword(String password) {
        this.password = password;
    }

    public void setAktywny(String aktywny) {
        this.aktywny = aktywny;
    }

    public void setPersonFailedLoginsCount(int failedLoginsCount) {
        this.failedLoginsCount = failedLoginsCount;
    }

    public int getPersonRoleId() {
        return this.personRoleId;
    }

    public int getPersonCountryId() {
        return this.personCountryId;
    }

    public int getPersonPaymentId() {
        return this.personPaymentId;
    }

    public String getPersonName() {
        return this.name = name;
    }

    public @Nullable String getPersonSecondName() {
        return this.secondName;
    }

    public String getPersonLastName() {
        return this.lastName;
    }

    public String getPersonPeselNumber() {
        return this.peselNumber;
    }

    public String getPersonStreet() {
        return this.street;
    }

    public String getPersonCity() {
        return this.city;
    }

    public String getPersonEmail() {
        return this.email;
    }

    public String getPersonPassword() {
        return this.password;
    }

    public String getAktywny() {
        return this.aktywny;
    }

    public int getPersonFailedLoginsCount() {
        return this.failedLoginsCount;
    }
}

