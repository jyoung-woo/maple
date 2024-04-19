
class login {

    constructor() {
        this.init();
    }

    init(){
    this.buttonListener();
    }

    buttonListener() {
        document.querySelector(".signUpButton").addEventListener('click', () => {
            // 회원가입 버튼 클릭 시 처리
            document.querySelector(".popup").style.display = "block";
        });
        document.querySelector(".closePopUp").addEventListener('click',()=>{
            document.querySelector(".popup").style.display = "none";
        })
        document.querySelector(".signUpBtn").addEventListener('click',()=>{
            this.signUpEvent();
            document.querySelector(".popup").style.display = "none";
        })
    }

    signUpEvent() {
        let nickname = document.querySelector(".nickname1").value;
        let userPwd= document.querySelector(".userPwd1").value;
        let username = document.querySelector(".username1").value;

        let data = {username:username, userPwd:userPwd, nickname:nickname}

        axios.post("/signUpInsert.do", data)
            .then((res)=>{
                if(res.data.result>0) {
                    alert("회원가입 완료")
                }else{
                    alert("회원가입 실패")
                }
            }).catch((err)=>{
                console.log("error",err);
        })

    }








}

export default new login();


