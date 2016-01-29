package com.grace.timer.web.controller.task;

import cn.com.common.base.service.BaseService;
import cn.com.common.base.web.BaseControllerImpl;
import com.grace.timer.domain.task.Task;
import com.grace.timer.service.task.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.Serializable;

/**
 * Created by panqingqing on 16/1/26.
 */
@Controller
@RequestMapping("/task.shtml")
public class TaskController extends BaseControllerImpl<Task, Serializable> {

    @Autowired
    private TaskService taskService;

    @Override
    protected String getBasePath() {
        return "task/";
    }

    @Override
    protected String getRedirectPath() {
        return "redirect:task.shtml?action=toList";
    }

    @Override
    protected BaseService<Task, Serializable> getBaseService() {
        return taskService;
    }
}
