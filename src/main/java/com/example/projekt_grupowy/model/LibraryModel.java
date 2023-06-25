package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "Biblioteka")
public class LibraryModel {

    @Id
    @GeneratedValue
    @Column(name = "id_biblioteka", nullable = false)
    private int libraryId;
    @Column(name = "id_ksiazka", nullable = false)
    private int bookId;

    @Column(name = "data_wypozyczenia", nullable = false)
    private int rentalDate;

    @Column(name = "data_rezerwacji", nullable = false)
    private int reservationDate;

    public LibraryModel(int bookId, int rentalDate, int reservationDate){
        this.bookId = bookId;
        this.rentalDate = rentalDate;
        this.reservationDate = reservationDate;
    }

    private void setBookId(int bookId){
        this.bookId = bookId;
    }

    public void setRentalDate(int rentalDate) {
        this.rentalDate = rentalDate;
    }

    public void setReservationDate(int reservationDate) {
        this.reservationDate = reservationDate;
    }

    public int getBookId() {
        return this.bookId;
    }

    public int getRentalDate() {
        return this.rentalDate;
    }

    public int getReservationDate() {
        return this.reservationDate;
    }
}

