package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "Ocena")
public class MarkModel {
    @Id
    @GeneratedValue
    @Column(name = "id_ocena", nullable = false)
    private int markId;
    @Column(name = "wartosc", nullable = false)
    private int markValue;
    @Column(name = "data_wpisania_oceny", nullable = false)
    private String markDate;

    public MarkModel(int markValue, String markDate) {
        this.markValue = markValue;
        this.markDate = markDate;
    }

    public void setMarkValue(int markValue) {
        this.markValue = markValue;
    }

    private void setMarkDate(String markDate) {
        this.markDate = markDate;
    }

    public int getMarkValue() {
        return this.markValue;
    }

    public String getMarkDate() {
        return this.markDate;
    }

}



