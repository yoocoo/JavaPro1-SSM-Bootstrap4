package cn.zjnu.mvc.controller;

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

}
