package com.example.projekt_grupowy.model;

import javax.persistence.*;

@Entity
@Table(name = "PlanZajec")
public class ScheduleModel {

    @Id
    @GeneratedValue
    @Column(name = "id_plan_zajec", nullable = false)
    private int scheduleId;
    @Column(name = "id_sala_wykladowa", nullable = false)
    private int lectureHallId;
    @Column(name = "godzina_rozpoczecia", nullable = false)
    private String startTime;
    @Column(name = "godzina_zakonczenia", nullable = false)
    private String endTime;

    public ScheduleModel(int lectureHallId,
                         String startTime,
                         String endTime
    ) {
        this.lectureHallId = lectureHallId;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public void setLectureHallId(int lectureHallId) {
        this.lectureHallId = lectureHallId;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public int getLectureHallId() {
        return lectureHallId;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public String getEndTime() {
        return this.endTime;
    }
}
