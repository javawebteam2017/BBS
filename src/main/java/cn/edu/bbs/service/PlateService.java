package cn.edu.bbs.service;

import cn.edu.bbs.dao.ReplyDao;
import cn.edu.bbs.entity.PlateEntity;
import cn.edu.bbs.dao.PlateDao;
import cn.edu.bbs.dao.PostDao;
import cn.edu.bbs.entity.PlateAnalysisInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlateService {
    @Autowired
    private PlateDao plateDao;

    @Autowired
    private PostDao postDao;

    @Autowired
    private ReplyDao replyDao;

    public List<PlateEntity> findAll() {
        return plateDao.findAll();
    }

    public PlateEntity findPlateEntityByPlateId(Integer plateId) {
        return plateDao.findPlateEntityByPlateId(plateId);
    }

    public void deletePlateEntityByPlateId(Integer plateId) {
        plateDao.deletePlateEntityByPlateId(plateId);
    }

    public PlateEntity savePlate(PlateEntity plateEntity) {
        return plateDao.save(plateEntity);
    }

    public List<PlateAnalysisInfo> getPlateAyalysisInfoList() {
        List<PlateEntity> all = plateDao.findAll();
        List<PlateAnalysisInfo> list = new ArrayList<>();
        for (int i = 0; i < all.size(); i++) {
            PlateAnalysisInfo plateAnalysisInfo = new PlateAnalysisInfo(all.get(i));
            plateAnalysisInfo.setPostCount(postDao.countPostEntityByPlateId(all.get(i).getPlateId()));
            plateAnalysisInfo.setReplyCount(replyDao.countReplyEntityByPlateId(all.get(i).getPlateId()));
            list.add(plateAnalysisInfo);
        }
        return list;
    }
}
