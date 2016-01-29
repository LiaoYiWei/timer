package com.grace.timer.service.task;

import cn.com.common.base.rpt.BaseRpt;
import cn.com.common.base.service.BaseServiceImpl;
import com.grace.timer.domain.task.Task;
import com.grace.timer.domain.task.TaskRpt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;

/**
 * Created by panqingqing on 16/1/26.
 */
@Service
public class TaskServiceImpl extends BaseServiceImpl<Task, Serializable> implements TaskService {

    @Autowired
    private TaskRpt taskRpt;

    @Override
    protected String getListHql() {
        return "from Task t order by t.id";
    }

    @Override
    protected String getHql(Long id) {
        return "from Task t where t.id = " + id + "  order by t.id";
    }

    @Override
    protected BaseRpt<Task, Serializable> getBaseRpt() {
        return taskRpt;
    }
}
