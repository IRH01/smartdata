package com.hhly.smartdata.controller.daily.api;

import com.hhly.smartdata.controller.BaseController;
import com.hhly.smartdata.dto.share.TimeFilter;
import com.hhly.smartdata.service.daily.DailyRechargeStatisticsService;
import com.hhly.smartdata.util.Result;
import com.hhly.smartdata.util.page.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

/**
 * Created by Iritchie.ren on 2017/10/10.
 */
@RestController
@Scope(value = "prototype")
@RequestMapping("/daily/recharge/statistics")
public class DailyRechargeStatisticsControllerApi extends BaseController{

    @Autowired
    private DailyRechargeStatisticsService dailyRechargeStatisticsService;

    @RequestMapping("list")
    public Result search(TimeFilter filter){
        Pagination pagination = null;
        try{
            pagination = this.dailyRechargeStatisticsService.search(filter);
        }catch(Exception e){
            LOGGER.error("查询月充值报表报错：" + e.getMessage());
        }
        return Result.success(pagination);
    }

    @RequestMapping("last/recharge/total")
    public Result getLastTotalRecharge(){
        BigDecimal total = new BigDecimal(0.00);
        try{
            total = this.dailyRechargeStatisticsService.getLastTotalRecharge();
        }catch(Exception e){
            LOGGER.error("获取最近一个月充值统计报错：" + e.getMessage());
        }
        return Result.success(total);
    }
}
