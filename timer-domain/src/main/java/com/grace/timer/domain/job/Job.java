package com.grace.timer.domain.job;

import cn.com.common.base.model.BaseEntity;

/**
 * Created by panqingqing on 16/1/27.
 */
public class Job extends BaseEntity {

    public Job() {
    }

    private String cronExpression;

    private String triggerName;

    private String triggerGroup;

    public String getCronExpression() {
        return cronExpression;
    }

    public void setCronExpression(String cronExpression) {
        this.cronExpression = cronExpression;
    }

    public String getTriggerName() {
        return triggerName;
    }

    public void setTriggerName(String triggerName) {
        this.triggerName = triggerName;
    }

    public String getTriggerGroup() {
        return triggerGroup;
    }

    public void setTriggerGroup(String triggerGroup) {
        this.triggerGroup = triggerGroup;
    }
}