package cn.zjnu.mvc.controller;

import cn.zjnu.domain.ResponseObj;
import cn.zjnu.domain.User;
import cn.zjnu.exception.*;
import cn.zjnu.service.UserService;
import cn.zjnu.service.serviceImpl.UserServiceImpl;
import cn.zjnu.utils.DataTablePageUtil;
import cn.zjnu.utils.GsonUtils;
import cn.zjnu.utils.PublicUtil;
import cn.zjnu.utils.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 用户请求相关控制器
 * <br/>Created by acheng on 2016/9/26.
 */
@RestController
@RequestMapping("/userAction")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;    //自动载入Service对象

    private ResponseObj responseObj;

    /**
     * 用户数据列表
     *
     * @return
     */
    @RequestMapping(value = "/page")
    public ModelAndView Page() {
        ModelAndView view = new ModelAndView("admin/admin_user");
        return view;
    }

    /**
     * 用户数据列表
     *
     * @return
     */
    @RequestMapping(value = "/pro_page")
    public ModelAndView projectPage() {
        ModelAndView view = new ModelAndView("admin/admin_project");
        return view;
    }
    /**
     * 为什么返回值是一个ModelAndView，ModelAndView代表一个web页面<br/>
     * setViewName是设置一个jsp页面的名称
     *
     * @param response http响应
     * @param user     发起请求后，spring接收到请求，然后封装的bean数据
     * @return 返回一个web页面
     * @throws Exception
     */
    @RequestMapping(value = "/reg", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object reg(HttpServletRequest request, HttpServletResponse response, User user, HttpSession session) throws Exception {
        Object result;
        responseObj = new ResponseObj<User>();
        if (null == user) {
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("用户信息不能为空！");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        if (StringUtils.isEmpty(user.getLoginId()) || StringUtils.isEmpty(user.getPwd())) {
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("用户名或密码不能为空！");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        if (null != userService.findUser(user)) {
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("用户已经存在！");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        try {
            userService.add(user);
        } catch (Exception e) {
            e.printStackTrace();
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("其他错误！");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        userService.updateLoginSession(request.getSession().getId(), user.getLoginId());
        responseObj.setCode(ResponseObj.OK);
        responseObj.setMsg("注册成功");
        user.setPwd(session.getId());   //单独设置密码为sessionId 误导黑客，前端访问服务器的时候必须有这个信息才能操作
        user.setNextUrl(request.getContextPath() + "/mvc/home");    //单独控制地址
        responseObj.setData(user);
        session.setAttribute("userInfo", user);

        result = new GsonUtils().toJson(responseObj);
        return result;
    }

    /**
     * 登录接口
     *
     * @param request
     * @param user
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object login(HttpServletRequest request, HttpServletResponse response, User user, HttpSession session) throws Exception {
        Object result;
        if (PublicUtil.isJsonRequest(request)) {    //确认是否json提交
            user = new GsonUtils().jsonRequest2Bean(request.getInputStream(), User.class);  //转换为指定类型的对象
            return user.toString();
        }
        if (null == user) {
            responseObj = new ResponseObj<User>();
            responseObj.setCode(ResponseObj.EMPUTY);
            responseObj.setMsg("登录信息不能为空");
            result = new GsonUtils().toJson(responseObj);
            return result; //返回json
        }

        if (StringUtils.isEmpty(user.getLoginId()) || StringUtils.isEmpty(user.getPwd())) {
            responseObj = new ResponseObj<User>();
            return StringisEmpty(responseObj, "用户名或密码不能为空!");
        }
        //查找用户
        User user1 = userService.findUser(user);
        if (null == user1) {
            responseObj = new ResponseObj<User>();
            responseObj.setCode(ResponseObj.EMPUTY);
            responseObj.setMsg("未找到该用户");
            result = new GsonUtils().toJson(responseObj);
        } else {
            if (user.getPwd().equals(user1.getPwd())) {
                user1.setPwd(session.getId());
                user1.setNextUrl(request.getContextPath() + "/mvc/home");
                responseObj = new ResponseObj<User>();
                responseObj.setCode(ResponseObj.OK);
                responseObj.setMsg(ResponseObj.OK_STR);
                responseObj.setData(user1);
                //userService.updateLoginSession(request.getSession().getId(), user.getLoginId());
                session.setAttribute("userInfo", user);
                result = new GsonUtils().toJson(responseObj);
            } else {
                responseObj = new ResponseObj<User>();
                result = StringisEmpty(responseObj, "用户名或密码错误!");

            }
        }
        return result;
    }

    @RequestMapping(value = "/uploadHeadPic", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object uploadHeadPic(@RequestParam(required = false) MultipartFile file, HttpSession session) {

        if (null == file || file.isEmpty()) {
            responseObj = new ResponseObj();
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("文件不能为空");
            return new GsonUtils().toJson(responseObj);
        }
        responseObj = new ResponseObj();
        responseObj.setCode(ResponseObj.OK);
        responseObj.setMsg("文件长度为：" + file.getSize());
        return new GsonUtils().toJson(responseObj);
    }

    /**
     * 用户列表
     *
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/list", method = RequestMethod.POST, produces = "application/json;charset=utf-8")
    public Object pageLocationChangeList() {

        DataTablePageUtil<User> dataTable = new DataTablePageUtil<User>(this.getRequest());
        //开始分页：PageHelper会处理接下来的第一个查询
        PageHelper.startPage(dataTable.getPage_num(), dataTable.getLength());
        //还是使用List，方便后期用到
        //排序参数
        String order = getRequest().getParameter("order[0][column]");//排序的列号
        int myOrder = Integer.parseInt(order);
        String orderDir = getRequest().getParameter("order[0][dir]");//排序的顺序asc or desc
        String orderColumn = getRequest().getParameter("columns[" + order + "][data]");//排序的列。注意，我认为页面上的列的名字要和表中列的名字一致，否则，会导致SQL拼接错误
        //为了能让 字段名和 前段取得字段名一致
        String strList[] = {"login_id", "pwd", "name", "sex", "duty", "cell_number", "photo_url", "used"}; //还可以增加几个
        String orderColumnName = strList[myOrder];

        System.out.println("前段监控选择排序的order（前段封装属性）：" + order);
        System.out.println("前段监控选择排序的order（强转int）：" + myOrder);
        System.out.println("前段监控选择排序的 升降序orderDir：" + orderDir);
        System.out.println("前段监控选择排序的 字段名（java属性） ：" + orderColumn);
        System.out.println("前段监控选择排序的 字段名（改造成对应sql 字段） ：" + orderColumnName);
        List<User> list = userService.findAll(dataTable.getSearch(), orderColumnName, orderDir);
        //List<User> list = userService.findAll(dataTable.getSearch(), "login_id", "asc");
        //用PageInfo对结果进行包装
        PageInfo<User> pageInfo = new PageInfo<User>(list);
        //封装数据给DataTables

        dataTable.setDraw(dataTable.getDraw());
        dataTable.setData(pageInfo.getList());
        dataTable.setRecordsTotal(pageInfo.getTotal());
        dataTable.setRecordsFiltered(dataTable.getRecordsTotal());
        return dataTable;
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Object update(User user) {
        Object result;

        responseObj = new ResponseObj<User>();

        String name = user.getLoginId();//获取修改条件
        //查找用户

        if (null == user) {
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("提示：要修改的信息不能为空！");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        try {
            userService.update(user);
        } catch (Exception e) {
            e.printStackTrace();
            responseObj.setCode(ResponseObj.FAILED);
            responseObj.setMsg("修改资料出现出现系统错误，请联系系统管理员 邮箱：110@qq.com");
            result = new GsonUtils().toJson(responseObj);
            return result;
        }
        responseObj.setCode(ResponseObj.OK);
        responseObj.setMsg("提示：用户资料信息更新成功！");
        responseObj.setData(user);
        System.out.println("====user:===" + user);
        result = new GsonUtils().toJson(responseObj);
        result = result;
        return result;
    }
}
