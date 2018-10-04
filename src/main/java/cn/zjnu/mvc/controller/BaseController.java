package cn.zjnu.mvc.controller;

import cn.zjnu.domain.ResponseObj;
import cn.zjnu.domain.User;
import cn.zjnu.utils.GsonUtils;
import cn.zjnu.utils.StringUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseController {

    public ModelAndView view(String viewName) {
        return new ModelAndView(viewName);
    }
    public HttpServletResponse getResponse() {
        return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getResponse();
    }
    public HttpServletRequest getRequest() {
        return((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    }
    public Object StringisEmpty(ResponseObj<Object> responseObj,String failedMsg){
        Object result;
        //ResponseObj responseObj=new ResponseObj<Object>();
        responseObj.setCode(ResponseObj.FAILED);
        responseObj.setMsg(failedMsg);
        result = new GsonUtils().toJson(responseObj);
        return result;

    }

}
