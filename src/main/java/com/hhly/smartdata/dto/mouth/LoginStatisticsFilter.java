package com.hhly.smartdata.dto.mouth;

/**
 * Created by Iritchie.ren on 2017/10/13.
 */
public class LoginStatisticsFilter extends TimeFilter{

    private Integer sourceType;

    public Integer getSourceType(){
        return sourceType;
    }

    public void setSourceType(Integer sourceType){
        this.sourceType = sourceType;
    }
}
