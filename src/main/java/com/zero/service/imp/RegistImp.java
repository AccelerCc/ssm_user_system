package com.zero.service.imp;

import com.zero.entity.UserMes;
import com.zero.mapper.RegistMapper;
import com.zero.service.RegistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RegistImp implements RegistService {
    @Autowired
    private RegistMapper registMapper;

    @Override
    public void addSe(UserMes userMes) {
        registMapper.add(userMes);
    }

    @Override
    public UserMes getOneUserSe(UserMes id) {
      return  registMapper.getMes(id);
    }

    @Override
    public UserMes getMesByEmail(UserMes userMes) {
        return registMapper.getMesByEmail(userMes);
    }
}
