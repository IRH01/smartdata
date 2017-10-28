CREATE DATABASE /*!32312 IF NOT EXISTS*/`smartdata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `smartdata`;

/*Data for the table `auth_admin` */

INSERT  INTO `auth_admin`(`id`,`user_id`,`admin_name`,`email`,`tel`,`depart_id`,`job_no`,`role_type`) VALUES (24,1,'admin','aaa@aa.com',NULL,NULL,NULL,2),(125,125,'hhly',NULL,NULL,NULL,NULL,2),(141,141,'葛亚',NULL,NULL,NULL,NULL,2),(173,173,'test',NULL,NULL,NULL,NULL,2),(174,174,'test1',NULL,NULL,NULL,NULL,2),(175,175,'test3',NULL,NULL,NULL,NULL,4),(176,176,'lldjqd',NULL,NULL,NULL,NULL,1),(177,177,'hyzbqd',NULL,NULL,NULL,NULL,2),(181,181,'lldjqd1',NULL,NULL,NULL,NULL,4),(201,201,'祖将',NULL,NULL,NULL,NULL,4),(221,221,'张玉邦',NULL,NULL,NULL,NULL,4),(241,241,'test4','','',NULL,'',1),(243,NULL,'qqqq','','',NULL,'',2),(245,NULL,'123123','','',NULL,'',2);

/*Data for the table `auth_function` */

INSERT  INTO `auth_function`(`id`,`parent_id`,`function_name`,`function_index`) VALUES (1,0,'系统管理',1),(2,1,'权限管理',2),(3,1,'欢迎页',1),(53,1,'菜单管理',3),(59,1,'角色管理',4),(73,1,'用户管理',5);

/*Data for the table `auth_menu` */

INSERT  INTO `auth_menu`(`id`,`permission`,`parent_id`,`menu_name`,`url`,`menu_index`,`create_time`) VALUES (18,NULL,0,'系统管理','welcome.do',1,'2015-10-16 00:00:00'),(19,'!sys_func_list',18,'权限管理','sys/func/list.do',5,'2015-09-28 00:00:00'),(20,'sys_menu_list',18,'菜单管理','sys/menu/list.do',4,'2015-09-28 00:00:00'),(21,'sys_role_list',18,'角色管理','sys/role/list.do',2,'2015-09-24 00:00:00'),(22,'welcome',18,'首页','welcome.do',1,'2015-09-24 00:00:00'),(24,'admin_admin_list',18,'用户管理','admin/admin/list.do',3,'2015-09-28 00:00:00'),(25,'interval_platform',0,'平台数据时段统计','interval/platform/show.do',2,'2017-09-25 10:41:44'),(26,'interval_source',25,'各端实时数据','interval/source/show.do',1,'2017-09-25 10:42:31'),(27,'interval_interface',25,'接口统计','interval/interface/show.do',2,'2017-09-25 10:42:31'),(28,'interval_game_launch',25,'游戏启动统计','interval/game/launch/show.do',3,'2017-09-25 10:42:31'),(29,'daily_composite',0,'平台日报表','daily/composite/show.do',3,'2017-09-25 10:42:31'),(30,'daily_register_source',29,'注册来源统计','daily/register/show.do',1,'2017-09-25 10:42:31'),(31,'daily_recharge_source',29,'充值来源统计','daily/recharge/statistics/show.do',2,'2017-09-25 10:42:31'),(32,'daily_login_source',29,'登录来源统计','daily/login/statistics/show.do',3,'2017-09-25 10:42:31'),(33,'daily_keep_record',29,'留存分析','daily/keep/record/show.do',4,'2017-09-25 10:42:31'),(34,'month_composite',0,'平台月报表','month/composite/show.do',4,'2017-09-25 10:42:31'),(35,'month_register_source',34,'注册来源统计','month/register/statistics/show.do',1,'2017-09-25 10:42:31'),(36,'month_recharge_source',34,'充值来源统计','month/recharge/statistics/show.do',2,'2017-09-25 10:42:31'),(37,'month_login_source',34,'登录来源统计','month/login/statistics/show.do',3,'2017-09-25 10:42:31'),(38,'game_operation',0,'游戏运营','',5,'2017-10-23 16:55:34'),(39,'user_recharge_summary',38,'用户充值汇总','game/operation/user/recharge/summary/show.do',1,'2017-10-23 16:41:35'),(40,'order_detail_summary',38,'订单详情汇总','game/operation/order/detail/summary/show.do',2,'2017-10-23 16:42:48'),(41,'game_channel_statistics',38,'游戏渠道数据统计','game/operation/game/channel/statistics/show.do',3,'2017-10-23 16:43:19'),(42,'member_channel_info',38,'会员注册渠道信息','game/operation/member/channel/info/show.do',4,'2017-10-23 16:45:01'),(43,'nation_member_recharge_summary',38,'各国会员充值汇总','game/operation/nation/member/recharge/summary/show.do',5,'2017-10-23 16:46:09'),(44,'market_channel_summary',38,'市场合作渠道数据','game/operation/market/channel/summary/show.do',6,'2017-10-23 16:50:37'),(45,'liaomeidezhou_market_channel',38,'撩妹德州市场合作渠道数据','game/operation/liaomeidezhou/market/channel/show.do',7,'2017-10-23 16:50:37'),(46,'lawyer_user_channel_consume',38,'律师楼用户渠道充值消费报表','game/operation/lawyer/user/channel/consume/show.do',8,'2017-10-23 16:50:37'),(47,'order_list',38,'订单列表','game/operation/order/list/show.do',9,'2017-10-23 16:50:37'),(48,'user_analyze',38,'用户分析','game/operation/user/analyze/show.do',10,'2017-10-23 16:50:37'),(49,'user_remain',38,'用户留存','game/operation/user/remain/show.do',11,'2017-10-23 16:50:37'),(50,'channel_operate_report',38,'渠道运营报表','game/operation/channel/operate/report/show.do',12,'2017-10-23 16:50:37'),(51,'remit_report',0,'划账报表','',6,'2017-10-23 16:56:24'),(52,'user_manager',51,'用户管理','remit/report/user/manager/show.do',1,'2017-10-23 16:56:24'),(53,'leyin_ticket_consume_detail',51,'乐盈劵消费明细','remit/report/leyin/ticket/consumer/show.do',2,'2017-10-23 16:56:24'),(54,'consume_list',51,'消费列表','remit/report/consume/show.do',3,'2017-10-23 16:56:24'),(55,'convert_list',51,'兑换列表','remit/report/convert/show.do',4,'2017-10-23 16:56:24'),(56,'game_remit_list',51,'游戏划账列表','remit/report/game/remit/show.do',5,'2017-10-23 16:56:24');

/*Data for the table `auth_permission` */

INSERT  INTO `auth_permission`(`id`,`permission`,`permission_name`,`function_id`,`create_time`) VALUES (1,'!sys_func_list','功能列表',2,'2015-03-18 00:00:00'),(2,'!sys_func_update','功能更新',2,'2015-03-18 00:00:00'),(3,'!sys_menu_add','菜单添加',53,'2015-03-19 00:00:00'),(4,'!sys_menu_delete','菜单删除',53,'2015-03-19 00:00:00'),(5,'!sys_menu_update','菜单更新',53,'2015-03-19 00:00:00'),(6,'!sys_perm_update','权限更新',2,'2015-03-18 00:00:00'),(7,'admin_admin_add','新增用户',73,'2015-03-30 00:00:00'),(8,'admin_admin_allocrole','分配角色',73,'2015-03-30 00:00:00'),(9,'admin_admin_delete','删除用户',73,'2015-03-30 00:00:00'),(10,'admin_admin_edit','编辑用户',73,'2015-03-30 00:00:00'),(11,'admin_admin_initpwd','恢复初始密码',73,'2015-03-30 00:00:00'),(12,'admin_admin_list','用户列表',73,'2015-03-30 00:00:00'),(13,'admin_admin_off','禁用用户',73,'2015-03-30 00:00:00'),(14,'admin_admin_on','启用用户',73,'2015-03-30 00:00:00'),(15,'sys_menu_list','菜单列表',53,'2015-03-19 00:00:00'),(16,'sys_menu_sort','菜单顺序调整',53,'2015-03-19 00:00:00'),(17,'sys_perm_search','权限搜索',2,'2015-03-18 00:00:00'),(18,'sys_role_add','角色添加',59,'2015-03-19 00:00:00'),(19,'sys_role_delete','角色删除',59,'2015-03-19 00:00:00'),(20,'sys_role_list','角色列表',59,'2015-03-19 00:00:00'),(21,'sys_role_update','角色更新',59,'2015-03-20 00:00:00'),(22,'welcome','欢迎页',3,NULL),(23,'interval_platform','平台数据时段统计',73,'2015-03-18 00:00:00'),(24,'interval_source','各端实时数据',73,'2015-03-18 00:00:00'),(25,'interval_interface','接口统计',73,'2015-03-18 00:00:00'),(26,'interval_game_launch','游戏启动统计',73,'2015-03-18 00:00:00'),(27,'daily_composite','平台日报表-综合数据',73,'2015-03-18 00:00:00'),(28,'daily_register_source','注册来源统计',73,'2015-03-18 00:00:00'),(29,'daily_recharge_source','充值来源统计',73,'2015-03-18 00:00:00'),(30,'daily_login_source','登录来源统计',73,'2015-03-18 00:00:00'),(31,'daily_keep_record','留存分析',73,'2015-03-18 00:00:00'),(32,'month_composite','平台月报表-综合数据',73,'2015-03-18 00:00:00'),(33,'month_register_source','注册来源统计',73,'2015-03-18 00:00:00'),(34,'month_recharge_source','充值来源统计',73,'2015-03-18 00:00:00'),(35,'month_login_source','登录来源统计',73,'2015-03-18 00:00:00'),(36,'game_operation','游戏运营',73,'2017-10-23 17:10:36'),(37,'user_recharge_summary','用户充值汇总',73,'2017-10-23 17:10:36'),(38,'order_detail_summary','订单详情汇总',73,'2017-10-23 17:10:36'),(39,'game_channel_statistics','游戏渠道数据统计',73,'2017-10-23 17:10:36'),(40,'member_channel_info','会员注册渠道信息',73,'2017-10-23 17:10:36'),(41,'nation_member_recharge_summary','各国会员充值汇总',73,'2017-10-23 17:10:36'),(42,'market_channel_summary','市场合作渠道数据',73,'2017-10-23 17:10:36'),(43,'liaomeidezhou_market_channel','撩妹德州市场合作渠道数据',73,'2017-10-23 17:10:36'),(44,'lawyer_user_channel_consume','律师楼用户渠道充值消费报表',73,'2017-10-23 17:10:36'),(45,'order_list','订单列表',73,'2017-10-23 17:10:36'),(46,'user_analyze','用户分析',73,'2017-10-23 17:10:36'),(47,'user_remain','用户留存',73,'2017-10-23 17:10:36'),(48,'channel_operate_report','渠道运营报表',73,'2017-10-23 17:10:36'),(49,'remit_report','划账报表',73,'2017-10-23 17:10:36'),(50,'user_manager','用户管理',73,'2017-10-23 17:10:36'),(51,'leyin_ticket_consume_detail','乐盈劵消费明细',73,'2017-10-23 17:10:36'),(52,'consume_list','消费列表',73,'2017-10-23 17:10:36'),(53,'convert_list','兑换列表',73,'2017-10-23 17:10:36'),(54,'game_remit_list','游戏划账列表',73,'2017-10-23 17:10:36');

/*Data for the table `auth_role` */

INSERT  INTO `auth_role`(`id`,`role_name`,`create_time`) VALUES (43,'超级管理员','2015-04-07 00:00:00'),(61,'普通用户','2016-08-04 00:00:00'),(161,'管理员','2016-09-12 12:03:15'),(181,'test','2017-03-29 15:43:38'),(201,'渠道运营商','2017-03-31 10:30:43'),(202,'test1','2017-07-04 19:10:05'),(203,'页面配置','2017-07-04 19:11:28'),(205,'qwe','2017-07-19 10:24:15');

/*Data for the table `auth_role_permission` */

INSERT  INTO `auth_role_permission`(`id`,`role_id`,`permission`) VALUES (348,43,'!sys_func_list'),(349,43,'!sys_func_update'),(350,43,'!sys_perm_update'),(351,43,'sys_perm_search'),(352,43,'!sys_menu_add'),(353,43,'!sys_menu_delete'),(354,43,'!sys_menu_update'),(355,43,'sys_menu_list'),(356,43,'sys_menu_sort'),(358,43,'sys_role_delete'),(359,43,'sys_role_list'),(360,43,'sys_role_update'),(361,43,'admin_admin_add'),(362,43,'admin_admin_allocrole'),(363,43,'admin_admin_delete'),(364,43,'admin_admin_edit'),(365,43,'admin_admin_initpwd'),(366,43,'admin_admin_list'),(367,43,'admin_admin_off'),(368,43,'admin_admin_on'),(369,43,'sys_role_add'),(994,181,'admin_admin_on'),(995,181,'!sys_func_list'),(996,181,'!sys_func_update'),(997,181,'!sys_perm_update'),(998,181,'sys_perm_search'),(999,181,'!sys_menu_add'),(1000,181,'!sys_menu_delete'),(1001,181,'!sys_menu_update'),(1002,181,'sys_menu_list'),(1003,181,'sys_menu_sort'),(1004,181,'sys_role_delete'),(1005,181,'sys_role_list'),(1006,181,'sys_role_update'),(1007,181,'admin_admin_add'),(1008,181,'admin_admin_allocrole'),(1009,181,'admin_admin_delete'),(1010,181,'admin_admin_edit'),(1011,181,'admin_admin_initpwd'),(1012,181,'admin_admin_list'),(1013,181,'admin_admin_off'),(1014,181,'sys_role_add'),(1070,61,'welcome'),(1275,201,'welcome'),(1530,203,'welcome'),(1700,202,'welcome'),(1711,202,'!sys_func_list'),(1712,202,'!sys_func_update'),(1713,202,'!sys_perm_update'),(1714,202,'sys_perm_search'),(1715,202,'!sys_menu_add'),(1716,202,'!sys_menu_delete'),(1717,202,'!sys_menu_update'),(1718,202,'sys_menu_list'),(1719,202,'sys_menu_sort'),(1720,202,'sys_role_add'),(1721,202,'sys_role_delete'),(1722,202,'sys_role_list'),(1723,202,'sys_role_update'),(1724,202,'admin_admin_add'),(1725,202,'admin_admin_allocrole'),(1726,202,'admin_admin_delete'),(1727,202,'admin_admin_edit'),(1728,202,'admin_admin_initpwd'),(1729,202,'admin_admin_list'),(1730,202,'admin_admin_off'),(1731,202,'admin_admin_on'),(1882,205,'welcome'),(1885,161,'welcome'),(1922,161,'!sys_func_list'),(1923,161,'!sys_func_update'),(1924,161,'!sys_perm_update'),(1925,161,'sys_perm_search'),(1926,161,'!sys_menu_add'),(1927,161,'!sys_menu_delete'),(1928,161,'!sys_menu_update'),(1929,161,'sys_menu_list'),(1930,161,'sys_menu_sort'),(1931,161,'sys_role_add'),(1932,161,'sys_role_delete'),(1933,161,'sys_role_list'),(1934,161,'sys_role_update'),(1935,161,'admin_admin_add'),(1936,161,'admin_admin_allocrole'),(1937,161,'admin_admin_delete'),(1938,161,'admin_admin_edit'),(1939,161,'admin_admin_initpwd'),(1940,161,'admin_admin_list'),(1941,161,'admin_admin_off'),(1942,161,'admin_admin_on'),(1953,161,'interval_platform'),(1954,161,'interval_source'),(1955,161,'interval_interface'),(1956,161,'interval_game_launch'),(1957,161,'daily_composite'),(1958,161,'daily_register_source'),(1959,161,'daily_recharge_source'),(1960,161,'daily_login_source'),(1961,161,'daily_keep_record'),(1962,161,'month_composite'),(1963,161,'month_register_source'),(1964,161,'month_recharge_source'),(1965,161,'month_login_source'),(1966,0,'game_operation'),(1967,0,'user_recharge_summary'),(1968,0,'order_detail_summary'),(1969,0,'game_channel_statistics'),(1970,0,'member_channel_info'),(1971,0,'nation_member_recharge_summary'),(1972,0,'market_channel_summary'),(1973,0,'liaomeidezhou_market_channel'),(1974,0,'lawyer_user_channel_consume'),(1975,0,'order_list'),(1976,0,'user_analyze'),(1977,0,'user_remain'),(1978,0,'channel_operate_report'),(1979,0,'remit_report'),(1980,0,'user_manager'),(1981,0,'leyin_ticket_consume_detail'),(1982,0,'consume_list'),(1983,0,'convert_list'),(1984,0,'game_remit_list');

/*Data for the table `auth_user` */

INSERT  INTO `auth_user`(`id`,`username`,`passwd`,`user_status`,`user_type`,`create_time`,`locale`) VALUES (1,'admin','85845644d259cc04776de30ea824b9de','0','1','2015-11-05 00:00:00','zh'),(125,'hhly','85845644d259cc04776de30ea824b9de','0','1','2016-08-15 00:00:00','zh'),(141,'geya','e10adc3949ba59abbe56e057f20f883e','0','1','2016-11-16 12:01:15','zh'),(173,'test','85845644d259cc04776de30ea824b9de','0','1','2017-03-28 15:28:57','zh'),(174,'test1','46f94c8de14fb36680850768ff1b7f2a','0','1','2017-03-28 16:20:31','zh'),(175,'test3','46f94c8de14fb36680850768ff1b7f2a','0','1','2017-03-29 15:43:58','zh'),(176,'lldjqd','46f94c8de14fb36680850768ff1b7f2a','0','1','2017-03-31 10:31:28','zh'),(177,'hyzbqd','46f94c8de14fb36680850768ff1b7f2a','0','1','2017-03-31 10:47:46','zh'),(181,'lldjqd1','46f94c8de14fb36680850768ff1b7f2a','0','1','2017-04-06 10:34:54','zh'),(201,'johnny','dc483e80a7a0bd9ef71d8cf973673924','0','1','2017-05-04 10:18:43','zh'),(221,'zhangyb','96e79218965eb72c92a549dd5a330112','0','1','2017-05-22 15:53:44','zh'),(241,'test4','96e79218965eb72c92a549dd5a330112','0','1','2017-05-24 15:36:11','zh'),(243,'qqqq','3bad6af0fa4b8b330d162e19938ee981','0','1',NULL,NULL),(245,'qwe','efe6398127928f1b2e9ef3207fb82663','0','1',NULL,NULL),(301,'lj','*6bb4837eb74329105ee4568dda7dc67ed2ca2ad9','0','1','2017-07-27 14:41:54','zh');

/*Data for the table `auth_user_role` */

INSERT  INTO `auth_user_role`(`id`,`user_id`,`role_id`) VALUES (180,1,43),(240,62,61),(283,124,61),(301,125,161),(320,141,161),(341,177,201),(360,176,201),(361,181,201),(381,201,201),(401,221,201),(402,174,61),(403,174,161),(404,174,181),(405,174,201),(406,174,202),(407,174,203),(415,241,61),(416,241,161),(417,241,181),(418,241,201),(419,241,202),(420,241,203),(421,241,205);

