package com.zero.mapper;


import com.zero.entity.UserMes;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RegistMapper {

    @Insert("insert into usermes (id,password,email,phone) values(#{id},#{password},#{email},#{phone})")
    public void add(UserMes userMes);

    @Select("select * from usermes where id = #{id} ")
    public UserMes getMes(UserMes userMes);

    @Select("select * from usermes where email = #{email} ")
    public UserMes getMesByEmail(UserMes userMes);
}
