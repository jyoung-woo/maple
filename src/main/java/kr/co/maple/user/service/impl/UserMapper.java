package kr.co.maple.user.service.impl;

import kr.co.maple.user.vo.AbilityVo;
import kr.co.maple.user.vo.UserVo;
import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import java.util.List;

@Mapper("userMapper")
public interface UserMapper {

     public List<UserVo> login(UserVo vo);

     public int signUpInsert(UserVo vo);

     public int userUpdate(UserVo vo);

     public AbilityVo selectAbility(AbilityVo vo);

     public List<AbilityVo> selectLineChart();

     public List<AbilityVo> selectBox1();

     public List<AbilityVo> salesData();
}
