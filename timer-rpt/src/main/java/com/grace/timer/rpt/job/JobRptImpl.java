package com.grace.timer.rpt.job;

import cn.com.common.base.rpt.BaseRptImpl;
import com.grace.timer.domain.job.Job;
import com.grace.timer.domain.job.JobRpt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * Created by panqingqing on 16/1/27.
 */
@Repository
public class JobRptImpl extends BaseRptImpl<Job, Serializable> implements JobRpt {
    private DataSource dataSource;

    @Autowired
    public void setDataSource(@Qualifier("dataSource") DataSource dataSource) {
        this.dataSource = dataSource;
    }

    private JdbcTemplate getJdbcTemplate() {
        return new JdbcTemplate(this.dataSource);
    }

    @Override
    public List<Map<String, Object>> getJobs() {
        List<Map<String, Object>> list = getJdbcTemplate().queryForList("select * from TB_QRTZ_TRIGGERS order by start_time");
        return list;
    }
}
