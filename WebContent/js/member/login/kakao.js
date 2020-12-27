window.addEventListener("load", function() {
	
	Kakao.init('55117dbe90455a0b08ee72d0145c9e56');
	Kakao.Auth.createLoginButton({
		container : '.kakao-login',
		success : function(authObj){
			Kakao.API.request({
				url:'/member/login',
				success:function(res){
					console.log(res);
					console.log(res.id);
					console.log(res.kakao_account.email);
				}
				
				
			})
		},
		fail : function(){
			console.log("실패당");
		}
		
	})
	
	
});