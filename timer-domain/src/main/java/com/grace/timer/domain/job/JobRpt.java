package com.grace.timer.domain.job;

import cn.com.common.base.rpt.BaseRpt;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by panqingqing on 16/1/27.
 */
public interface JobRpt extends BaseRpt<Job, Serializable> {
    List<Map<String,Object>> getJobs();
}
