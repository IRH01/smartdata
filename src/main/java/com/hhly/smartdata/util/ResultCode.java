package com.hhly.smartdata.util;

import com.google.common.collect.Maps;

import java.util.Map;

/**
 * Created by wy on 13-7-2.
 */
public class ResultCode{

    private ResultCode(){
    }

    public static final int OK = 200;
    public static final int ERROR_CODE = 400;
    public static final int ERROR_USER = 401;
    public static final int ERROR_STATUS = 402;
    public static final int ERROR_DUPLICATE_ENTRY = 403;
    public static final int ERROR_SYSTEM = 500;
    public static final int ERROR_PARAMS = 502;
    public static final int ERROR_MSG_ID = 503;
    public static final int PROMOTION_MODE_POSITION_EXIST = 504;
    public static final int QUALIFIED_EXIST = 505;
    public static final int RACK_BACK_EXIST = 506;
    public static final int GAME_TYPE_EXIST = 507;
    public static final int GAME_TYPE_NAME_EXIST = 508;
    public static final int USER_SETTLEMENT_EXIST = 509;
    public static final int PARTNER_USER_NOT_EXIST = 510;
    public static final int WITHDRAWAL_APPLICATION_EXIST = 511;
    public static final int PROMOTION_MODE_GAME_EXIST = 512;
    public static final int PROMOTION_EXIST = 513;
    public static final int PARTNER_USER_STATE_ERROR = 514;
    public static final int LOGIN_FAIL_ACCOUNT_OR_PASSWORD_ERROR = 515;
    public static final int LOGIN_FAIL_ACCOUNT_NOT_EXIST = 516;
    public static final int LOGIN_FAIL_ACCOUNT_NOT_ENABLE = 517;
    public static final int LOGIN_FAIL_ACCOUNT_UN_CHECK = 518;
    public static final int LOGIN_FAIL_ACCOUNT_CHECKED_NO = 519;
    public static final int PARTNER_USER_EXIST = 520;
    public static final int FUND_LOGIN_PASSWORD_SAME = 521;
    public static final int PARTNER_PHONE_EXIST = 522;
    public static final int PARTNER_EMAIL_EXIST = 523;
    public static Map<Integer, String> msgMap = Maps.newHashMap();

    static{
        msgMap.put(OK, "操作成功");
        msgMap.put(ERROR_USER, "错误的用户,请输入正确的账号.");
        msgMap.put(ERROR_CODE, "错误的验证码,请输入正确的验证码.");
        msgMap.put(ERROR_STATUS, "错误的状态,请联系管理员.");
        msgMap.put(ERROR_DUPLICATE_ENTRY, "输入项重复,请检查输入项.");
        msgMap.put(ERROR_SYSTEM, "操作失败,请联系管理员.");
        msgMap.put(ERROR_PARAMS, "传递参数有误");
        msgMap.put(ERROR_MSG_ID, "没有对应的协议");
        msgMap.put(PROMOTION_MODE_POSITION_EXIST, "该位置已被定制");
        msgMap.put(QUALIFIED_EXIST, "同游戏类型同资格类型的数据已经存在");
        msgMap.put(RACK_BACK_EXIST, "相同配置项的返佣记录已经存在");
        msgMap.put(GAME_TYPE_EXIST, "该游戏已经分类");
        msgMap.put(GAME_TYPE_NAME_EXIST, "该平台该游戏类名已经存在");
        msgMap.put(USER_SETTLEMENT_EXIST, "用户结算方式已经存在");
        msgMap.put(PARTNER_USER_NOT_EXIST, "代理用户不存在");
        msgMap.put(WITHDRAWAL_APPLICATION_EXIST, "本月提款申请已经存在");
        msgMap.put(PROMOTION_MODE_GAME_EXIST, "定制游戏已存在");
        msgMap.put(PROMOTION_EXIST, "线下代理已存在");
        msgMap.put(PARTNER_USER_STATE_ERROR, "代理用户状态不正确");
        msgMap.put(LOGIN_FAIL_ACCOUNT_OR_PASSWORD_ERROR, "账号或密码错误");
        msgMap.put(LOGIN_FAIL_ACCOUNT_NOT_EXIST, "账号不存在");
        msgMap.put(LOGIN_FAIL_ACCOUNT_NOT_ENABLE, "账号已被禁用");
        msgMap.put(LOGIN_FAIL_ACCOUNT_UN_CHECK, "账号正在审核中");
        msgMap.put(LOGIN_FAIL_ACCOUNT_CHECKED_NO, "账号审核未通过");
        msgMap.put(PARTNER_USER_EXIST, "代理账户已存在");
        msgMap.put(FUND_LOGIN_PASSWORD_SAME, "资金密码不能登录密码相同");
        msgMap.put(PARTNER_PHONE_EXIST, "手机号已被注册");
        msgMap.put(PARTNER_EMAIL_EXIST, "邮箱已被注册");
    }

    public static String getMsg(int key){
        return (String) msgMap.get(key);
    }
}
