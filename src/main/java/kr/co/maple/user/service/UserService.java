package kr.co.maple.user.service;

import kr.co.maple.user.vo.AbilityVo;
import kr.co.maple.user.vo.UserVo;

import java.util.List;

public interface UserService {

    public List<UserVo> login(UserVo vo);

    public int signUpInsert(UserVo vo);

    public int userUpdate(UserVo vo);

    public AbilityVo selectAbility(AbilityVo vo);

    public List<AbilityVo> selectLineChart();
    public List<AbilityVo> selectBox1();

    public List<AbilityVo> salesData(AbilityVo vo);

    public List<AbilityVo> dayDate(AbilityVo vo);





}
