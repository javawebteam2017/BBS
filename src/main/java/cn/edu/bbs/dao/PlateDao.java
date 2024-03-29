package cn.edu.bbs.dao;

import cn.edu.bbs.entity.PlateEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface PlateDao extends JpaRepository<PlateEntity,Integer> {
    PlateEntity findPlateEntityByPlateId(Integer plateId);

    @Modifying
    @Transactional
    void deletePlateEntityByPlateId(Integer plateId);

}
