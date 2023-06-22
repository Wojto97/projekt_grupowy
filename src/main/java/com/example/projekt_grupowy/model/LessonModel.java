package com.example.projekt_grupowy.model;

import org.springframework.lang.Nullable;

import javax.persistence.*;

@Entity
@Table(name = "przedmiot")
public class LessonModel {
    @Id
    @GeneratedValue
    @Column(name = "id_przedmiot", nullable = false)
    private int lessonId;
    @Column(name = "id_ocena", nullable = true)
    private int markId;
    @Column(name = "id_sala_wykladowa", nullable = false)
    private int lectureHallId;
    @Column(name = "nazwa", nullable = false)
    private String lessonName;
    @Column(name = "opis_zajec", nullable = true)
    private String description;
    @Column(name = "termin_najblizszych_zajec", nullable = false)
    private String nextLessonDate;
    @Column(name = "termin_egzaminu", nullable = false)
    private String examDate;

    public LessonModel(@Nullable int markId,
                       int lectureHallId,
                       String lessonName,
                       @Nullable String description,
                       String nextLessonDate,
                       String examDate
    ) {
        this.markId = markId;
        this.lectureHallId = lectureHallId;
        this.lessonName = lessonName;
        this.description = description;
        this.nextLessonDate = nextLessonDate;
        this.examDate = examDate;
    }


    public void setMarkId(int markId) {
        this.markId = markId;
    }

    public void setLectureHallId(int lectureHallId) {
        this.lectureHallId = lectureHallId;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public void setDescription(@Nullable String description) {
        this.description = description;
    }

    public void setNextLessonDate(String nextLessonDate) {
        this.nextLessonDate = nextLessonDate;
    }

    public void setExamDate(String examDate) {
        this.examDate = examDate;
    }

    public int getMarkId() {
        return this.markId;
    }

    public int getLectureHallId(int lectureHallId) {
        return this.lectureHallId;
    }

    public String getLessonName() {
        return this.lessonName;
    }

    public @Nullable String getDescription() {
        return this.description;
    }

    public String getNextLessonDate() {
        return this.nextLessonDate;
    }

    public String getExamDate() {
        return this.examDate;
    }

}

