package com.grace.timer.service.job;

import cn.com.common.base.rpt.BaseRpt;
import cn.com.common.base.service.BaseServiceImpl;
import com.grace.timer.domain.job.Job;
import com.grace.timer.domain.job.JobRpt;
import org.apache.commons.collections.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerKey;
import org.quartz.impl.triggers.CronTriggerImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import static org.quartz.CronExpression.isValidExpression;

/**
 * Created by panqingqing on 16/1/27.
 */
@Service
public class JobServiceImpl extends BaseServiceImpl<Job, Serializable> implements JobService {

    @Autowired
    private JobRpt jobRpt;

    @Autowired
    private Scheduler scheduler;

    @Autowired
    private JobDetail jobDetail;

    @Override
    protected String getListHql() {
        return null;
    }

    @Override
    protected String getHql(Long id) {
        return null;
    }

    @Override
    protected BaseRpt<Job, Serializable> getBaseRpt() {
        return jobRpt;
    }

    @Override
    public void addScheduleJob(Job job) {
        if (!StringUtils.isBlank(job.getCronExpression()) && isValidExpression(job.getCronExpression())) {
            CronTriggerImpl cronTriggerImpl = new CronTriggerImpl();
            try {
                cronTriggerImpl.setCronExpression(job.getCronExpression());
                TriggerKey triggerKey = new TriggerKey(job.getTriggerName(), job.getTriggerGroup());
                cronTriggerImpl.setJobName(jobDetail.getKey().getName());
                cronTriggerImpl.setKey(triggerKey);
                scheduler.addJob(jobDetail, true);
                checkExists(cronTriggerImpl, triggerKey);
            } catch (ParseException e) {
                throw new RuntimeException(e.getMessage(), e);
            } catch (SchedulerException e) {
                throw new RuntimeException(e.getMessage(), e);
            }
        }

    }

    @Override
    public List<Map<String, Object>> getJobs() {
        List<Map<String, Object>> list = jobRpt.getJobs();
        return replaceList(list);
    }

    private List<Map<String, Object>> replaceList(List<Map<String, Object>> list) {
        long val = 0L;
        for (Map<String, Object> map : list) {
            String temp = MapUtils.getString(map, "trigger_name");
            if (StringUtils.indexOf(temp, "&") != -1) {
                map.put("display_name", StringUtils.substringBefore(temp, "&"));
            } else {
                map.put("display_name", temp);
            }
            val = MapUtils.getLongValue(map, "next_fire_time");
            if (val > 0) {
                map.put("next_fire_time", DateFormatUtils.format(val, "yyyy-MM-dd HH:mm:ss"));
            }
            val = MapUtils.getLongValue(map, "prev_fire_time");
            if (val > 0) {
                map.put("prev_fire_time", DateFormatUtils.format(val, "yyyy-MM-dd HH:mm:ss"));
            }
            val = MapUtils.getLongValue(map, "start_time");
            if (val > 0) {
                map.put("start_time", DateFormatUtils.format(val, "yyyy-MM-dd HH:mm:ss"));
            }
            val = MapUtils.getLongValue(map, "end_time");
            if (val > 0) {
                map.put("end_time", DateFormatUtils.format(val, "yyyy-MM-dd HH:mm:ss"));
            }
            map.put("statu", map.get("trigger_state"));
        }
        return list;
    }


    private void checkExists(CronTriggerImpl cronTriggerImpl, TriggerKey triggerKey) throws SchedulerException {
        if (scheduler.checkExists(triggerKey)) {
            scheduler.rescheduleJob(triggerKey, cronTriggerImpl);
        } else {
            scheduler.scheduleJob(cronTriggerImpl);
        }
    }


}
