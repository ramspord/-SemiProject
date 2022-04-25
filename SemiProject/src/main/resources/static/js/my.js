$(document).ready(function(){
	
	const id=$.cookie("id");
	if(id){
		
		$("#loginSpan").html(
			id+" 님 로그인 중  <a href='myPage' class='badge bg-dark text-white ms-1 rounded-pill'>마이페이지</a> <button id='logoutBtn' class='badge bg-dark text-white ms-1 rounded-pill'>로그아웃</button>"
			);
	}
		
	
	
	
	$("#loginBtn").click(function(){
		const id=$("#id").val();
		const pw=$("#pw").val();
		
		//alert(id+":"+pw);
		
		$.post('../login', {id,pw}, function(data){
			data=JSON.parse(data);
			if(data.id){				
				$("#loginSpan").html(
					data.id+" 님 로그인 중  <a href='myPage' class='badge bg-dark text-white ms-1 rounded-pill'>마이페이지</a> <button id='logoutBtn' class='badge bg-dark text-white ms-1 rounded-pill'>로그아웃</button>"
					);
				$.cookie("id",data.id);
			}else{
				alert("아이디와 비밀번호를 확인해주세요.")
			}

		});
	});
		
		$(document).on("click", "#logoutBtn", function(){
			alert("로그아웃 하시겠습니까?");
		$.post('../logout',{},function(data){
			data=JSON.parse(data);
			if(data.msg=="logout complete"){
				alert("로그아웃 되었습니다.");
				$.removeCookie("id");
				location.reload();
			}else{
				alert(data.msg);
			}
		});
	});
    
    	//id 정규식 체크 
      	$("#id").blur(function(){
			if(idJ.test($(this).val())) {
				console.log(idJ.test($(this).val()));
				$("#id_check").text('');
			}else {
				$('#id_check').text('4~20자리, 첫글자 숫자 X');
				$('#id_check').css('color','#F08080');
			}
		});
    
		//pw 정규식 체크 
      	$("#pw").blur(function(){
			if(pwJ.test($(this).val())) {
				console.log(pwJ.test($(this).val()));
				$("#pw_check").text('');
			}else {
				$('#pw_check').text('영문, 숫자, 특수문자를 10자리 이상');
				$('#pw_check').css('color','#F08080');
			}
		});
      	
      	//pw 같은지 확인 
      	$("#pwd").blur(function(){
			if($('#pw').val() != $(this).val()){
				$('#pwd_check').text('비밀번호가 일치하지 않습니다');
				$('#pwd_check').css('color','#F08080');
			}else{
				$('#pwd_check').text('');
			}
		});

      	//이름 확인
      	$("#name").blur(function() {
    		if (nameJ.test($(this).val())) {
    				console.log(nameJ.test($(this).val()));
    				$("#name_check").text('');
    		} else {
    			$('#name_check').text('한글, 영문만 가능합니다');
    			$('#name_check').css('color', '#F08080');
    		}
    	});

      	//이메일 확인
      	$("#email").blur(function() {
    		if (emailJ.test($(this).val())) {
    				console.log(emailJ.test($(this).val()));
    				$("#email_check").text('');
    		} else {
    			$('#email_check').text('이메일 형식을 따라주세요');
    			$('#email_check').css('color', '#F08080');
    		}
    	});
      	
        //닉네임 확인 
      	$("#nickname").blur(function() {
    		if (nicknameJ.test($(this).val())) {
    				console.log(nicknameJ.test($(this).val()));
    				$("#nickname_check").text('');
    		} else {
    			$('#nickname_check').text('2~10자 안으로 정해주세요');
    			$('#nickname_check').css('color', '#F08080');
    		}
    	});

        //번호 확인 
      	$("#phone").blur(function() {
    		if (phoneJ.test($(this).val())) {
    				console.log(phoneJ.test($(this).val()));
    				$("#phone_check").text('');
    		} else {
    			$('#phone_check').text('010 혹은 02 형식으로 입력해주세요');
    			$('#phone_check').css('color', '#F08080');
    		}
    	});
		
		
		
		
		//내정보 수정
		$("#myInfo_Update").click(function(){

			
			const pw = $("#pw").val();			
    		const name = $("#name").val();
    		const email = $("#email").val();
    		const nickname = $("#nickname").val();
			const phone = $("#phone").val();
			const postcode = $("#postcode").val();
			const roadAddress = $("#roadAddress").val();
			const jibunAddress = $("#jibunAddress").val();
			const detailAddress = $("#detailAddress").val();
			const extraAddress = $("#extraAddress").val();
			
    		
    		$.post('../myInfo_Update',{pw,name,email,nickname,phone,postcode,roadAddress,jibunAddress,detailAddress,extraAddress},function(data){
				alert("정보 수정이 완료되었습니다.");
    			opener.parent.location.reload();
    			
    			
    		});	
    		
    		//window.close();
		});
		
		//내정보 탈퇴
		$("#myInfo_Delete").click(function(){
			
			if(confirm("탈퇴하시겠습니까?")==true){

				const id = $("#id").val();
    		
    			$.post('../myInfo_Delete',{id},function(data){

					$.post('../logout',{},function(data){
						alert("탈퇴되었습니다.");
    					opener.parent.location.reload();
    					
					});
    			});	
			} else {
				return;
			}
	
    		//window.close();
    	});
    	
    	
});//document end

		



		function insertBasket(pcode){
			const id=$.cookie("id");
			if(id){
				alert("카트에 담으시겠습니까?");
				$.post('insertBasket',{pcode},function(data){
					alert(data);
				});
			}else{
				alert("로그인 후 이용 가능합니다");
			}
		}

