class main {

    constructor() {
        this.init();
    }

    init() {
    this.lookUserName();
    this.clickListener();
    }

    clickListener() {
            let modifyPopUp = document.querySelector(".userModify");
        document.querySelector(".userModifyBtn").addEventListener('click',()=>{
            modifyPopUp.style.display = "block";
        })
        document.querySelector(".logoutBtn").addEventListener("click",()=>{
            this.logout();
        })
        document.querySelector(".modifyCancelBtn").addEventListener('click',()=>{
            modifyPopUp.style.display = "none";
        })
        document.querySelector(".modifyBtn").addEventListener('click',()=>{
            this.updateUser();
        })


    }

    updateUser(){
        let userName = document.querySelector(".userName").value;
        let userId = document.querySelector(".userId").value;
        let userPwd = document.querySelector(".userPwd").value;
        let nickname = document.querySelector(".nickname").value;

        let data = {userId:userId, userPwd:userPwd, nickname:nickname,userName:userName}
        axios.post("/userUpdate.do", data)
            .then((res)=>{
                if(res.data.userVo > 0 ){
                    alert("수정이 완료되었습니다.");
                  location.href = "/loginPage.do";
                }
            }).catch((err)=>{
                alert("회원정보수정 오류")
        })
    }

    lookUserName() {
        document.getElementById("userNickname").innerHTML = userNickname + '님';
    }
    logout() {
        alert("정말 로그아웃 하시겠습니까?");
        window.location.href = "/logout.do";
    }



}

export default new main();