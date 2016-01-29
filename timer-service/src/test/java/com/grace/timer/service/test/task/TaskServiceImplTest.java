package com.grace.timer.service.test.task;

import com.grace.timer.api.task.TaskDTO;
import com.grace.timer.domain.task.Task;
import com.grace.timer.service.task.TaskService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by panqingqing on 16/1/26.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class TaskServiceImplTest {

    @Autowired
    private TaskService taskService;

    @Test
    public void testCreate() {
        for (int i = 1; i < 102; i++) {
            TaskDTO taskDTO = new TaskDTO();
            taskDTO.setName("随心贷" + i);
            taskDTO.setUrl("http://www.baidu.com");
            taskDTO.setConnectTime(10);
            Task task = new Task();
            task.setProperties(taskDTO);
            taskService.save(task);
        }
    }

}
