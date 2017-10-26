package com.hhly.smartdata.controller.gameoperation.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Iritchie.ren on 2017/10/23.
 */
@Controller
@RequestMapping("/game/operation/order/detail/summary")
public class OrderDetailSummaryController {

    @RequestMapping(value = "/show")
    public String show() {
        return "game_operation/order_detail_summary";
    }

}
