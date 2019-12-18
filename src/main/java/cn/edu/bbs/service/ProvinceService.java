package cn.edu.bbs.service;

import cn.edu.bbs.entity.ProvinceEntity;
import cn.edu.bbs.dao.ProvinceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service
public class ProvinceService {
    @Autowired
    private ProvinceDao provinceDao;

    public List<ProvinceEntity> findAll() {return provinceDao.findAll();}
}
