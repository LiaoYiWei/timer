package com.grace.timer.service.job;

import org.quartz.*;
import org.springframework.context.ApplicationContext;
import org.springframework.scheduling.quartz.QuartzJobBean;

/**
 * Created by panqingqing on 16/1/27.
 */
@PersistJobDataAfterExecution
@DisallowConcurrentExecution
public class QuartzJob extends QuartzJobBean {


    @Override
    protected void executeInternal(JobExecutionContext jobExecutionContext) throws JobExecutionException {
        System.out.println("*******************");
    }

    /**
     * @param jobExecutionContext
     * @return
     * @Title: getApplicationContext
     * @Description: 获取上下文信息
     */
    private ApplicationContext getApplicationContext(JobExecutionContext jobExecutionContext) {
        try {
            return (ApplicationContext) jobExecutionContext.getScheduler().getContext().get("applicationContextKey");
        } catch (SchedulerException e) {
            throw new RuntimeException("获取[" + e.getMessage() + "]失败", e);
        }
    }
}
