package cn.edu.bbs.service;

import cn.edu.bbs.dao.CityDao;
import cn.edu.bbs.entity.CityEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class CityService {
    @Autowired
    private CityDao cityDao;

    public List<CityEntity> findAll() {return cityDao.findAll();}
}
