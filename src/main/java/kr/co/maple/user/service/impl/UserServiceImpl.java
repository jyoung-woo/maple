package kr.co.maple.user.service.impl;

import kr.co.maple.user.service.UserService;
import kr.co.maple.user.vo.AbilityVo;
import kr.co.maple.user.vo.UserVo;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource(name = "userMapper")
    UserMapper mapper;




    @Override
    public List<UserVo> login(UserVo vo) {
        return mapper.login(vo);
    }

    @Override
    public int signUpInsert(UserVo vo) {
        return mapper.signUpInsert(vo);
    }

    @Override
    public int userUpdate(UserVo vo) {
        return mapper.userUpdate(vo);
    }

    @Override
    public AbilityVo selectAbility(AbilityVo vo) {
        return mapper.selectAbility(vo);
    }

    @Override
    public List<AbilityVo> selectLineChart() {
        return mapper.selectLineChart();
    }

    @Override
    public List<AbilityVo> selectBox1() {
        return mapper.selectBox1();
    }

    @Override
    public List<AbilityVo> salesData(AbilityVo vo) {
        return mapper.salesData(vo);
    }

    @Override
    public List<AbilityVo> dayDate(AbilityVo vo) {
        return mapper.dayDate(vo);
    }


}



