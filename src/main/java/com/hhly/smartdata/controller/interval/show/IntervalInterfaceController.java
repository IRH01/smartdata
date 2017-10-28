package com.hhly.smartdata.controller.interval.show;

import com.hhly.smartdata.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 接口统计
 */
@Controller
@RequestMapping(value = "/interval/interface")
public class IntervalInterfaceController extends BaseController{

    @RequestMapping(value = "/show")
    public String show(){
        return "interval/interface_statistics";
    }

}
