package kr.co.maple.user.vo;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserVo {
    int userId;
    String nickname;
    String userPwd;
    String email;
    String authCd;
    String userName;
    String username;
    String daySelectBox;
}
