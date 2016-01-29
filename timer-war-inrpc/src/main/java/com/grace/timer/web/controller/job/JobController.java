package com.grace.timer.web.controller.job;

import cn.com.common.base.service.BaseService;
import cn.com.common.base.web.BaseControllerImpl;
import com.grace.timer.domain.job.Job;
import com.grace.timer.domain.task.Task;
import com.grace.timer.service.job.JobService;
import com.grace.timer.service.task.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by panqingqing on 16/1/27.
 */
@Controller
@RequestMapping("/job.shtml")
public class JobController extends BaseControllerImpl<Job, Serializable> {

    @Autowired
    private JobService jobService;

    @Autowired
    private TaskService taskService;

    @Override
    protected String getBasePath() {
        return "job/";
    }

    @Override
    protected String getRedirectPath() {
        return null;
    }

    @Override
    protected BaseService<Job, Serializable> getBaseService() {
        return jobService;
    }

    @Override
    @RequestMapping(params = "action=toList")
    public String toList(HttpServletRequest request, HttpServletResponse response) {
        List<Map<String, Object>> list = jobService.getJobs();
        request.setAttribute("list", list);
        return basePathList;
    }

    @Override
    @RequestMapping(params = "action=toAdd")
    public String toAdd(HttpServletRequest request, HttpServletResponse response) {
        List<Task> taskList = taskService.queryList();
        request.setAttribute("taskList", taskList);
        return basePathadd;
    }

    @Override
    @RequestMapping(params = "action=doAdd")
    public String doAdd(HttpServletRequest request, HttpServletResponse response, Job job) {
        jobService.addScheduleJob(job);
        return baseRedirectPath;
    }

}
