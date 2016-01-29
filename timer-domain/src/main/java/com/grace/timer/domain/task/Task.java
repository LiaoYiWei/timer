package com.grace.timer.domain.task;

import cn.com.common.base.model.BaseEntity;
import com.grace.timer.api.task.TaskDTO;

/**
 * Created by panqingqing on 16/1/26.
 */
public class Task extends BaseEntity {

    private Integer connectTime;

    public Task() {

    }

    public void setProperties(TaskDTO taskDTO) {
        this.setName(taskDTO.getName());
        this.setUrl(taskDTO.getUrl());
        this.setConnectTime(taskDTO.getConnectTime());
    }

    public void setConnectTime(Integer connectTime) {
        this.connectTime = connectTime;
    }

    public Integer getConnectTime() {
        return connectTime;
    }
}
