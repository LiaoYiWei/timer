package com.grace.timer.web.controller.home;

import cn.com.common.base.service.BaseService;
import cn.com.common.base.web.BaseControllerImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by panqingqing on 16/1/26.
 */
@Controller
@RequestMapping("/home.shtml")
public class HomeController extends BaseControllerImpl {

    @Override
    protected String getBasePath() {
        return "home/";
    }

    @Override
    protected String getRedirectPath() {
        return null;
    }

    @Override
    protected BaseService getBaseService() {
        return null;
    }

    @RequestMapping(params = "action=toHome")
    public String toHome(HttpServletRequest request, HttpServletResponse response) {
        return getBasePath() + "home";
    }
}
