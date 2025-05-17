package com.system;

public class ContactUs {
    private int id;
    private String username;
    private String email;
    private String subject;
    private String message;

    public ContactUs(int id, String username, String email, String subject, String message) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.subject = subject;
        this.message = message;
    }

   
    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getSubject() {
        return subject;
    }

    public String getMessage() {
        return message;
    }
}
