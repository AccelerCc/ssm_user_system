package com.zero.service;

import com.zero.entity.UserMes;


import java.util.List;

public interface RegistService {

    public void addSe(UserMes userMes);

    public UserMes getOneUserSe(UserMes userMes);

    public UserMes getMesByEmail(UserMes userMes);
}
