

var btndangnhap = document.getElementById('login-button');

btndangnhap.onclick = function Validate() {
}

function showLoginAlert(check) {
    if(check==true)
    {
        alert("Đăng nhập thành công");
    }
    else{
        alert("Tài khoản hoặc mật khâu không chính xác");
    }
}
