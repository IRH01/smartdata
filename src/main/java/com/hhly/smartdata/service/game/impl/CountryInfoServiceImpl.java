package com.hhly.smartdata.service.game.impl;

import com.hhly.smartdata.mapper.game.CountryInfoReposity;
import com.hhly.smartdata.model.game.CountryInfo;
import com.hhly.smartdata.service.game.CountryInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryInfoServiceImpl implements CountryInfoService{
    @Autowired
    CountryInfoReposity CountryInfoReposity;

    @Override
    public List<CountryInfo> getExistDataCountryInfo(){
        return this.CountryInfoReposity.getExistDataCountryInfo();
    }
}
