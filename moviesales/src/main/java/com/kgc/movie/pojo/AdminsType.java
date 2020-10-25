package com.kgc.movie.pojo;

public class AdminsType {
    private Integer id;

    private String type;

    private String grade;

    private String gradeIscount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade == null ? null : grade.trim();
    }

    public String getGradeIscount() {
        return gradeIscount;
    }

    public void setGradeIscount(String gradeIscount) {
        this.gradeIscount = gradeIscount == null ? null : gradeIscount.trim();
    }
}