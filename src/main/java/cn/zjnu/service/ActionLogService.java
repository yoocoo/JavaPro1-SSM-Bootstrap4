package cn.zjnu.service;

import cn.zjnu.domain.UserActionLog;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 程 on 2016/10/28.
 */
public interface ActionLogService extends BaseService<UserActionLog> {
    void add(HttpServletRequest request);

    List<UserActionLog> findAll(int pageNum, int pageSize);

    //基于BootStrap4+Datatable+Myabtis+PageHelper版本的数据表格
    List<UserActionLog> getLogs();

    /**
     * 获取总条数
     * @return  获取总条数
     */
    int getAllCount();
}
