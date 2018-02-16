package cn.zjnu.mvc.controller;

import cn.zjnu.domain.ResponseList;
import cn.zjnu.domain.ResponseObj;
import cn.zjnu.domain.UserActionLog;
import cn.zjnu.service.ActionLogService;
import cn.zjnu.utils.DataTablePageUtil;
import cn.zjnu.utils.GsonUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by 程 on 2016/10/30.
 */
@Controller
@RequestMapping("/actionLog")
public class ActionLogController {
    @Autowired
    ActionLogService actionLogService;


    /**
     * 日志数据表格主页
     *
     * @return
     */
    @RequestMapping(value = "/adminTable", method = RequestMethod.GET)
    public String table() {
        return "admin/admin_table";
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    //@ResponseBody
    public void PageAdminList(HttpServletRequest request, HttpServletResponse response) {
        //使用DataTables的属性接收分页数据
        DataTablePageUtil<UserActionLog> dataTable = new DataTablePageUtil<>(request);
        //开始分页：PageHelper会处理接下来的第一个查询
        PageHelper.startPage(dataTable.getPage_num(), dataTable.getLength());
        //还是使用List，方便后期用到
        List<UserActionLog> userList = actionLogService.getLogs();
        System.out.println("userList:" + new GsonUtils().toJson(userList));


        //用PageInfo对结果进行包装
        PageInfo<UserActionLog> pageInfo = new PageInfo<>(userList);
        System.out.println("pageInfo!!!!:" + new GsonUtils().toJson(pageInfo));

        List<UserActionLog> pageList =pageInfo.getList();
        System.out.println("pageList!!!!:" + new GsonUtils().toJson(pageList));


        //封装数据给DataTables
        dataTable.setDraw(dataTable.getDraw());
        dataTable.setData(pageInfo.getList());
        //dataTable.setData(pageList);
        dataTable.setRecordsTotal(pageInfo.getTotal());
        dataTable.setRecordsFiltered(dataTable.getRecordsTotal());
        //返回数据到页面
        System.out.println("所有的日志列表!!!!:" + new GsonUtils().toJson(dataTable));
        try {
            response.setCharacterEncoding("UTF-8");
            response.setContentType("text/json");
            response.getWriter().write(new GsonUtils().toJson(dataTable));
            System.out.println("所有的日志列表:" + new GsonUtils().toJson(dataTable));
            response.getWriter().flush();
            response.getWriter().close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 分页查找行为日志，其实druid里面已经包含了行为日志
     *
     * @param pageNum  页码
     * @param pageSize 每一页的条数
     * @return
     */
    @RequestMapping(value = "/findLogList"
            , produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object findLog(int pageNum, int pageSize) {
        if (pageNum <= 0) {
            pageNum = 1;
        }
        if (pageSize == 0) {
            pageSize = 10;
        }

        int toalNum; //总页码

        ResponseList<UserActionLog> responseObj = new ResponseList<UserActionLog>();

        try {

            toalNum = actionLogService.getAllCount();   //先把总条数赋值给总页数，作为缓存变量，减少下面算法的查找次数

            toalNum = toalNum % pageSize > 0 ? toalNum / pageSize + 1 : toalNum / pageSize;     //在每页固定条数下能不能分页完成，有余则加一页码

            List<UserActionLog> result = actionLogService.findAll(pageNum, pageSize);

            responseObj.setPageNum(pageNum);
            responseObj.setTotalNum(toalNum);
            responseObj.setPageSize(pageSize);
            if (result == null || result.size() == 0) {
                responseObj.setCode(ResponseObj.EMPUTY);
                responseObj.setMsg("查询结果为空");
                return new GsonUtils().toJson(responseObj);
            }
            responseObj.setCode(ResponseObj.OK);
            responseObj.setMsg("查询成功");
            responseObj.setData(result);
            return new GsonUtils().toJson(responseObj);
        } catch (Exception e) {
            e.printStackTrace();
            //查询失败
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("查询失败");
            return new GsonUtils().toJson(responseObj);
        }


    }
}
