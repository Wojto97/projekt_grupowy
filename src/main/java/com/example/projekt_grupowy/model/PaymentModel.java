package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "Platnosc")
public class PaymentModel {

    @Id
    @GeneratedValue
    @Column(name = "id_platnosc", nullable = false)
    private int paymentId;
    @Column(name = "wartosc", nullable = false)
    private int value;

    @Column(name = "zaplanowana", nullable = false)
    private boolean isPlanned;

    public PaymentModel(int value, boolean isPlanned) {
        this.value = value;
        this.isPlanned = isPlanned;
    }

    public void setPlanned(boolean planned) {
        isPlanned = planned;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public boolean getPlanned() {
        return isPlanned;
    }

}