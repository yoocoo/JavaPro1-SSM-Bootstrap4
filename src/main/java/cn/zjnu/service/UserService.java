package cn.zjnu.service;

import cn.zjnu.domain.User;
import cn.zjnu.exception.UserCanNotBeNullException;
import cn.zjnu.exception.UserNameCanNotBeNullException;
import cn.zjnu.exception.UserPwdCanNotBeNullException;

import java.util.List;

/**
 * Created by Administrator on 2016/9/25.
 */
public interface UserService extends BaseService<User> {

    void add(User user) throws Exception;

    void update(User user) throws Exception;

    User findUser(User user) throws Exception;

    void updateLoginSession(String sessionId, String LoginId);

    List<User> findAll(String keyword, String column, String orders);
}
