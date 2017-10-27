package com.hhly.smartdata.mapper.smartdata;


import com.hhly.smartdata.model.smartdata.IntervalGameLaunchListReport;
import com.hhly.smartdata.model.smartdata.IntervalGameLaunchReport;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IntervalGameLaunchReportMapper {
    int insert(IntervalGameLaunchReport record) throws Exception;

    int insertSelective(IntervalGameLaunchReport record) throws Exception;

    IntervalGameLaunchReport selectByPrimaryKey(Long id) throws Exception;

    int updateByPrimaryKeySelective(IntervalGameLaunchReport record) throws Exception;

    int updateByPrimaryKey(IntervalGameLaunchReport record) throws Exception;

    List<IntervalGameLaunchReport> selectIntervalGameLaunchChatData(@Param("startDate") String startDate, @Param("endDate") String endDate) throws Exception;

    void deleteByTimeAndSourceTypeAndPlatformId(@Param("statisticsTime") String statisticsTime, @Param("sourceType") Byte sourceType, @Param("platformId") Integer platformId);

    List<IntervalGameLaunchListReport> selectIntervalGameLaunchListData(@Param("startDate") String startDate, @Param("endDate") String endDate) throws Exception;
}