package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "SalaWykladowa")
public class LectureHallModel {
    @Id
    @GeneratedValue
    @Column(name = "id_sala_wykladowa", nullable = false)
    private int lectureHallId;
    @Column(name = "numer_sali", nullable = false)
    private String lectureHallNumber;

    @Column(name = "adres_sali", nullable = false)
    private String lectureHallAddress;

    public LectureHallModel(
            String lectureHallNumber, String lectureHallAddress
    ) {
        this.lectureHallAddress = lectureHallAddress;
        this.lectureHallNumber = lectureHallNumber;
    }

    public void setLectureHallNumber(String lectureHallNumber) {
        this.lectureHallNumber = lectureHallNumber;
    }

    public void setLectureHallAddress(String lectureHallAddress) {
        this.lectureHallAddress = lectureHallAddress;
    }

    public String getLectureHallNumber(){
        return this.lectureHallNumber;
    }

    public String getLectureHallAddress(){
        return this.lectureHallAddress;
    }
}
