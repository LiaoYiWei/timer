package com.grace.timer.service.job;

import cn.com.common.base.service.BaseService;
import com.grace.timer.domain.job.Job;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by panqingqing on 16/1/27.
 */
public interface JobService extends BaseService<Job, Serializable> {
    void addScheduleJob(Job job);

    List<Map<String,Object>> getJobs();

}
