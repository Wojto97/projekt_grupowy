package com.example.projekt_grupowy.model;

import org.springframework.lang.Nullable;

import javax.persistence.*;

@Entity
@Table(name = "Ksiazka")
public class BookModel {

    @Id
    @GeneratedValue
    @Column(name = "id_ksiazka", nullable = false)
    private int bookId;
    @Column(name = "tytul", nullable = false)
    private String tittle;

    @Column(name = "id_wypozyczyl", nullable = true)
    private int rentalPersonId;

    @Column(name = "id_zarezerwowal", nullable = true)
    private int reservationPersonId;

    @Column(name = "po_terminie_oddania", nullable = true)
    private Boolean afterDueDate;

    public BookModel(
            String tittle,
           @Nullable int rentalPersonId,
            @Nullable int reservationPersonId,
            boolean afterDueDate
    ){
        this.rentalPersonId = rentalPersonId;
        this.tittle = tittle;
        this.afterDueDate = afterDueDate;
        this.reservationPersonId = reservationPersonId;
    }

    public void setAfterDueDate(Boolean afterDueDate) {
        this.afterDueDate = afterDueDate;
    }

    public void setTittle(String tittle) {
        this.tittle = tittle;
    }

    public void setReservationPersonId(int reservationPersonId) {
        this.reservationPersonId = reservationPersonId;
    }

    public void setRentalPersonId(int rentalPersonId) {
        this.rentalPersonId = rentalPersonId;
    }

    public Boolean getAfterDueDate() {
        return afterDueDate;
    }

    public String getTittle() {
        return tittle;
    }

    public int getRentalPersonId() {
        return rentalPersonId;
    }

    public int getReservationPersonId() {
        return reservationPersonId;
    }
}