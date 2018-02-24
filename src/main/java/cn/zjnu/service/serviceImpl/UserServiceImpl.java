package cn.zjnu.service.serviceImpl;

import cn.zjnu.dao.UserDao;
import cn.zjnu.domain.User;
import cn.zjnu.exception.*;
import cn.zjnu.service.UserService;
import cn.zjnu.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/9/25.
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    /**
     * 添加用户，一般来说需要检查用户为空、用户名为空、密码为空
     */
    public void add(User user) throws OtherThingsException {

        int result = 0; //受影响的行数默认为0
        try {
            result = userDao.add(user);
        } catch (Exception e) {
            System.out.println("添加用户失败,用户已经存在");
            //其他用户添加失败异常
            throw new OtherThingsException(e);
        }
        if (result > 0)
            System.out.println("添加用户成功");
    }

    @Override
    public void update(User user) throws OtherThingsException {
        int result = 0; //受影响的行数默认为0
        try {
            result = userDao.update(user);
        } catch (Exception e) {
            System.out.println("更新用户资料失败");
            //其他用户添加失败异常
            throw new OtherThingsException(e);
        }
        if (result > 0)
            System.out.println("更新用户成功");
    }

    public List<User> findAll(int pageNum, int pageSize) {
        return null;
    }

    /**
     * 查找用户
     *
     * @param user 用户bean
     * @throws Exception
     */
    public User findUser(User user) {
        return userDao.findOneById(user.getLoginId());
    }

    public void updateLoginSession(String sessionId, String loginId) {
        userDao.updateLoginSession(sessionId, loginId);
    }

    @Override
    public List<User> findAll(String keyword, String column, String orders){
        List<User>  list = userDao.findAll(keyword,column,orders);
        return list;
    }

}
