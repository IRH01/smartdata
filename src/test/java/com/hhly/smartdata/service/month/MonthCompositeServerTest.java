package com.hhly.smartdata.service.month;

import com.alibaba.fastjson.JSONObject;
import com.hhly.smartdata.common.BaseTest;
import com.hhly.smartdata.dto.share.TimeFilter;
import com.hhly.smartdata.util.page.Pagination;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * CompositeServer Tester.
 *
 * @author Iritchie.ren
 * @version 1.0
 * @since <pre>十月 10, 2017</pre>
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/spring/spring-context.xml"})
public class MonthCompositeServerTest extends BaseTest{
    @Autowired
    private MonthCompositeServer monthCompositeServer;

    /**
     * Method: search(String startMonth, String endMonth)
     */
    @Test
    public void testSearch() throws Exception{
        TimeFilter filter = new TimeFilter();
        filter.setPageNo(1);
        filter.setPageSize(12);
        filter.setTimeEnd("2017-08");
        filter.setTimeEnd("2017-09");
        Pagination pagination = this.monthCompositeServer.search(filter);
        System.err.println(JSONObject.toJSONString(pagination));
    }

} 
