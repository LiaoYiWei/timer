package com.grace.timer.rpt.task;

import cn.com.common.base.rpt.BaseRptImpl;
import com.grace.timer.domain.task.Task;
import com.grace.timer.domain.task.TaskRpt;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

/**
 * Created by panqingqing on 16/1/26.
 */
@Repository
public class TaskRptImpl extends BaseRptImpl<Task, Serializable> implements TaskRpt {
}
