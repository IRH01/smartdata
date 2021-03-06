<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>产品运营数据统计后台</title>
    <link rel="shortcut icon" href="../../../img/favicon.ico">
    <link rel="stylesheet" href="../../../css/bootstrap.min.css">
    <link rel="stylesheet" href="../../../css/style.css">
    <link rel="stylesheet" href="../../../css/zTreeStyle.css">
    <link rel="stylesheet" href="../../../css/dialogsdk.css">
    <link rel="stylesheet" href="../../../css/jquery-ui.css">
    <link rel="stylesheet" href="../../../css/admin-trend.css"/>
    <link rel="stylesheet" href="../../../lib/myPagination/css/style.css"/>
    <link rel="stylesheet" href="../../../lib/myPagination/js/myPagination/page.css"/>
    <link rel="stylesheet" href="../../../css/jquery-ui.css"/>
    <!-- [if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif] -->
    <script src="../../../lib/jquery-1.11.2.min.js"></script>
    <script src="../../../lib/bootstrap.min.js"></script>
    <script src="../../../lib/jquery.ztree.all-3.5.min.js"></script>
    <script src="../../../lib/jquery.validate.js"></script>
    <script src="../../../lib/additional-methods.min.js" type="text/javascript"></script>
    <script src="../../../lib/jquery-validate.bootstrap-tooltip.js" type="text/javascript"></script>
    <script src="../../../lib/jquery.validate.custom.js" type="text/javascript"></script>
    <script src="../../../lib/My97DatePickerBeta/My97DatePicker/WdatePicker.js"></script>
    <script src="../../../lib/dialogsdk.js"></script>
    <script src="../../../lib/tools/tools.js"></script>
    <script src="../../../lib/layer/layer.js"></script>
    <script src="../../../lib/laydate/laydate.js"></script>
    <script src="../../../lib/myPagination/js/myPagination/jquery.myPagination6.0.js"></script>
    <script src="../../../lib/jquery-ui.js"></script>
    <script src="../../../lib/datecontrol.js"></script>
    <script src="../../../lib/echart/dist/echarts.js"></script>
    <script src="../../../lib/tool.js"></script>
<body>
<div class="wrap">
    <jsp:include page="../template/header.jsp"/>
    <jsp:include page="../template/menu.jsp"/>

    <div class="container-fluid content">
        <div class="row">
            <div id="content" class="col-lg-10 col-md-9">
                <div class="sdk-content">
                    <ul class="breadcrumb">
                        <li>您当前的位置：</li>
                        <tags:breadcrumb/>
                        <li>游戏启动统计列表</li>
                    </ul>
                </div>
                <!--body start-->
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title" id="-collapsible-group-item-#1-">
                            <a data-toggle="collapse" data-parent="#accordion"
                               href="#collapseOne" aria-expanded="true"
                               aria-controls="collapseOne" class="">游戏启动统计列表</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" aria-expanded="true">
                        <div class="panel-body">
                            <div class="admin-content">
                                <div class="section-box">
                                    <div class="whiteDiv tab-content">
                                        <ul id="sortable" class="ui-widget-content sortable">
                                            <li class="ui-state-default">
                                                <div style="padding-bottom:60px;"
                                                     class="ui-widget-content resize resizePanel">
                                                    <div class="sortHandle">分时段列表</div>
                                                    <div style="margin-left: -10px;float:right;">
                                                        <span> 终端：
                                                         <select id="sourceType" onchange="search()">
                                                                    <option value="" selected>请选择</option>
                                                                    <option value="1">PC</option>
                                                                    <option value="2">ANDROID</option>
                                                                    <option value="3">IOS</option>
                                                                    <option value="4">H5</option>
                                                                </select>
                                                        </span>
                                                    </div>
                                                    <div class="tablePanel">
                                                        <table id="tbDataList" class="tableList1" style="width: 2600px">
                                                            <thead>
                                                            <tr>
                                                            </tr>
                                                            </thead>
                                                            <tbody id="terminalsIntervalData"></tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="ui-state-default">
                                                <div class="ui-widget-content resize" style="height:300px;">
                                                    <div class="sortHandle">分时段曲线图</div>
                                                    <div style="width:100%;height:95%;">
                                                        <div id="trendline" class="trendline"></div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--body end-->
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    var initSearchDate = ["00:00", "00:30", "01:00", "01:30", "02:00", "02:30", "03:00", "03:30", "04:00", "04:30", "05:00", "05:30", "06:00", "06:30", "07:00", "07:30",
        "08:00", "08:30", "09:00", "09:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30", "15:00", "15:30",
        "16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30", "20:00", "20:30", "21:00", "21:30", "22:00", "22:30", "23:00", "23:30", "24:00"];

    var date = new Date();
    var separator = "-";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentDate = date.getFullYear() + separator + month + separator + strDate
        + " ";

    $(function () {
        $("#sortable").sortable({cursor: "move", handle: ".sortHandle"});
        $(".resize").resizable({minHeight: 200, minWidth: 300});
        $("#trendline").resize(
            function () {
                if (undefined != trendline) {
                    trendline.resize();
                }
            }
        );
        $(window).resize(
            function () {
                if (undefined != trendline) {
                    trendline.resize();
                }
            }
        );
    });


    var pageSize = 10;

    var getDeviceType = function () {
        var devices = $(".deviceType");
        var deviceTypes = "";
        for (i = 0; i < devices.length; i++) {
            if (devices[i].checked) {
                if ("" != deviceTypes) {
                    deviceTypes += ",";
                }
                deviceTypes += devices.eq(i).val();
            }
        }
        return deviceTypes;
    }

    var pageSize = 10;

    // 添加表格列
    var addTableTh = function (timeData) {
        $("#tbDataList>thead>tr").html("<th width=\"60\">平台</th>");
        $.each(timeData, function (i, n) {
            $("#tbDataList>thead>tr").append('<th width="60">' + n + '</th>');
        });

    };

    // 添加数据行
    var addTableTr = function (dataList) {
        console.log(dataList);
        $.each(dataList, function (i, n) {
            var trHtml = '<tr><td class="date">' + n.name + '</td>';

            $.each(n.list, function (j, m) {
                trHtml += '<td class="date">' + m.launchCount + '</td>'
            });
            trHtml+='</tr>';
            $("#tbDataList>tbody").append(trHtml);
        });
    };

    // 添加统计行
    var addTableSumTr = function (data) {
        console.log(data);
        var trHtml = '<tr><td class="date">总计</td>';

        $.each(data, function (j, m) {
            trHtml += '<td class="date">' + m.launchCount + '</td>'
        });

        trHtml+='</tr>';
        $("#tbDataList>tbody").append(trHtml);
    };

    var showTerminalsIntervalData = function (pageNumber, pageSize) {
        for (var i = 0; i < initSearchDate.length; i++) {
            $("#dateStarts").append("<option value='" + currentDate + initSearchDate[i] + "'>" + initSearchDate[i] + "</option>");
            $("#dateEnds").append("<option value='" + currentDate + initSearchDate[i] + "'>" + initSearchDate[i] + "</option>");
        }
        $("#terminalsIntervalData").empty();
        $.post("/interval/game/launch/list.do", {
            startDate: $('#dateStarts').val(),
            endDate: $('#dateEnds').val(),
            sourceType: $("#sourceType").val(),
            pageNumber: pageNumber,
            pageSize: pageSize
        }, function (result) {
            var json = result;
            console.log(json);
            if (null != json && undefined != json) {
                //添加时间列
                addTableTh(json.time);

                var infoData = json.data;
                if (null == infoData || undefined == infoData || 0 >= infoData.length) {
                    $("#terminalsIntervalData").append("<tr><td colspan=\"49\">没有数据</td></tr>");
                } else {
                    //添加数据行
                    addTableTr(json.data);

                    //添加统计行
                    addTableSumTr(json.sumData);
                }
            } else {
                $("#totalCount").html(0);
                $("#totalPage").html(0);
                $("#terminalsIntervalData").append("<tr><td colspan=\"10\">没有数据</td></tr>");
            }
        });
    };

    //查询显示
    var search = function () {
        pageSize = $("#pageSize").val();
        loadNewUserDataTrendLine(echartsCopy);
        showTerminalsIntervalData(1, pageSize);
    }

    var trendline;

    function loadNewUserDataTrendLine(echarts) {
        var startDate = $("#dateStarts").val();
        var endDate = $("#dateEnds").val();

        $.ajax({
            url: "/interval/game/launch/chart.do",
            data: {
                startDate: startDate,
                endDate: endDate,
                sourceType: $("#sourceType").val()
            },
            success: function (result) {
                var json = result.data;
                trendline = echarts.init(document
                    .getElementById('trendline'));
                trendline.setOption({
                    title: {
                        x: '20',
                        text: '',
                        textStyle: {
                            fontSize: '16',
                            fontWeight: 'bold'
                        }
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    color: ['#2ec7c9', '#b6a2de', '#5ab1ef',
                        '#ffb980', '#d87a80'],
                    legend: {
                        show: true,
                        orient: 'horizontal',
                        data: json.platform
                    },
                    grid: {
                        borderWidth: 0,
                        y: 50,
                        y2: 30,
                        x: 50,
                        x2: 50
                    },
                    xAxis: [{
                        type: 'category',
                        boundaryGap: false,
                        data: json.time,
                        splitLine: {
                            show: true,
                            lineStyle: {
                                color: '#f5f5f5',
                                width: 1,
                                type: 'solid'
                            }
                        }
                    }],
                    yAxis: [{
                        type: 'value'
                    }],

                    series: json.data
                });

            }
        })
    }

    var echartsCopy;
    // 路径配置
    require.config({
        paths: {
            echarts: '/lib/echart/dist'
        }
    });

    // 使用
    require(['echarts', 'echarts/chart/line'],
        function (ec) {
            echartsCopy = ec;
            search();
        });
</script>