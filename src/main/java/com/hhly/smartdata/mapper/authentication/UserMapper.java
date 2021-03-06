package com.hhly.smartdata.mapper.authentication;

import com.hhly.smartdata.model.authentication.User;
import com.hhly.smartdata.util.page.Page;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    int delete(Integer id) throws Exception;

    int insert(User record) throws Exception;

    User getUser(Integer id) throws Exception;

    User getByUsername(String username) throws Exception;

    int update(User record) throws Exception;

    List<User> searchUsers(@Param("filter") User condition, @Param("page") Page page) throws Exception;
}