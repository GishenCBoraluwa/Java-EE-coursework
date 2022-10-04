package com.admin.bean;

public class Flight {
    protected int id;
    protected String start;
    protected String finish;
    protected String date;
    protected String time;
    
    public Flight() {
    }
    
    public Flight(String start, String finish, String date, String time) {
        super();
        this.start = start;
        this.finish = finish;
        this.date = date;
        this.time = time;
    }
    

    public Flight(int id, String start, String finish, String date, String time) {
        super();
        this.id = id;
        this.start = start;
        this.finish = finish;
        this.date = date;
        this.time = time;
    }




    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getFinish() {
        return finish;
    }

    public void setFinish(String finish) {
        this.finish = finish;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
    
    
    
    
}
