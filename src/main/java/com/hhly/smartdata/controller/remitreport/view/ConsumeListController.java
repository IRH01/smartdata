package com.hhly.smartdata.controller.remitreport.view;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Iritchie.ren on 2017/10/23.
 */
@Controller
@Scope(value = "prototype")
@RequestMapping("/remit/report/consume")
public class ConsumeListController{

    @RequestMapping(value = "/show")
    public String show(){
        return "remit_report/consume_list";
    }

}
