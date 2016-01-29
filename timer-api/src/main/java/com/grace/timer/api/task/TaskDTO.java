package com.grace.timer.api.task;

import cn.com.common.base.model.BaseEntity;

/**
 * Created by panqingqing on 16/1/26.
 */
public class TaskDTO extends BaseEntity {

    private Integer connectTime;

    public Integer getConnectTime() {
        return connectTime;
    }

    public void setConnectTime(Integer connectTime) {
        this.connectTime = connectTime;
    }
}
