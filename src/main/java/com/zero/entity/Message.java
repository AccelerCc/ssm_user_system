package com.zero.entity;

public class Message {
    private String msg;
    private UserMes user;
    public Message() {
        super();
    }
    public Message(UserMes user) {
        super();
        this.user = user;
    }
    public Message(String msg) {
        super();
        this.msg = msg;
    }
    public Message(String msg, UserMes user) {
        super();
        this.msg = msg;
        this.user = user;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        this.msg = msg;
    }
    public UserMes getUser() {
        return user;
    }
    public void setUser(UserMes user) {
        this.user = user;
    }
}