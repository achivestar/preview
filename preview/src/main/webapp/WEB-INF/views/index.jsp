<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>J&STAY | 여행 프로그램 서비스 제공을 위한 설문</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">

    <!-- Font Awesome JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script defer src="${pageContext.request.contextPath}/resources/js/fontawesome-all.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/icheck-bootstrap@3.0.1/icheck-bootstrap.min.css" />
    <style>
      .h5{
        line-height: 2.2rem;
      }

      .displayLoding {
		 display:none;
	  } 
	  
	  .form-row {
	  	margin-left:20px;
	  }

    </style>
    <script>
	function removeEmojis (e) {
		    const regex = /(?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3|\u3299|\u3297|\u303d|\u3030|\u24c2|\ud83c[\udd70-\udd71]|\ud83c[\udd7e-\udd7f]|\ud83c\udd8e|\ud83c[\udd91-\udd9a]|\ud83c[\udde6-\uddff]|\ud83c[\ude01-\ude02]|\ud83c\ude1a|\ud83c\ude2f|\ud83c[\ude32-\ude3a]|\ud83c[\ude50-\ude51]|\u203c|\u2049|[\u25aa-\u25ab]|\u25b6|\u25c0|[\u25fb-\u25fe]|\u00a9|\u00ae|\u2122|\u2139|\ud83c\udc04|[\u2600-\u26FF]|\u2b05|\u2b06|\u2b07|\u2b1b|\u2b1c|\u2b50|\u2b55|\u231a|\u231b|\u2328|\u23cf|[\u23e9-\u23f3]|[\u23f8-\u23fa]|\ud83c\udccf|\u2934|\u2935|[\u2190-\u21ff])/g;
	    if(regex.test($(e).val())) {
	        alert("이모지는 사용할 수 없습니다.");
	        let strVal = $(e).val().replace(regex,'');
	        $(e).val(strVal);
	    }
	}
	</script>
</head>
  <body class="bg-light py-3 py-lg-5">
    <div class="container">
      <div class="text-center">
        <h3><a href="http://jnstay.net" target="_blank"><img src="${pageContext.request.contextPath}/resources/img/logo.png" /></a></h3>
        <p class="lead">본 설문은 저희 JSTAY에 머무르시는 동안 고객님께 제공하여 드릴 서비스를 위한 설문 입니다.</p>
      </div>
  
      <br>
      <hr>
      <br>
      <ul class="nav nav-tabs nav-justified" id="nav" role="tablist">
        <li class="nav-item">
          <a href="#step-1" class="nav-link h4 mb-0 active" id="step-1-tab" data-toggle="tab" role="tab" aria-controls="step-1" aria-selected="true">Step 1<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-2" class="nav-link h4 mb-0" id="step-2-tab" data-toggle="tab" role="tab" aria-controls="step-2" aria-selected="false">Step 2<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-3" class="nav-link h4 mb-0" id="step-3-tab" data-toggle="tab" role="tab" aria-controls="step-3" aria-selected="false">Step 3<br></a>
        </li>
        <li class="nav-item">
          <a href="#step-4" class="nav-link h4 mb-0" id="step-4-tab" data-toggle="tab" role="tab" aria-controls="step-4" aria-selected="false">Step 4<br></a>
        </li>
      </ul>
      <form id="form">
      <div class="tab-content" id="navContent">
      
        <div class="tab-pane fade pt-4 show active" id="step-1" role="tabpanel" aria-labelledby="step-1-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
          <!-- #1 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #1: 고객님의 성함과 연락처를 남겨주세요.</h2>
                <!-- <p class="small">(설문을 마친 분들의 한해 추첨을 통해 소정의 선물을 드립니다)</p> -->
                <br>
             </div>
           </div> 
          <div class="form-row">
            <div class="col-md-6 form-group">
          		<input type="text" class="form-control" name="name" id="name" placeholder="이름">
          	</div>
          	<div class="col-md-6 form-group">
          		<input type="tel" class="form-control" name="phone" id="phone" placeholder="연락처" onBlur="isCelluar(this.value)">
          	</div>
          </div>
	    <!-- #1 end-->
	     <hr>
	    <!-- #2 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #2: 고객님의 이메일을 적어주세요.</h2>
                <br>
             </div>
           </div> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<input type="text" class="form-control" name="email" id="email" placeholder="email">
          	</div>
          	
          </div>
	    <!-- #2 end-->
	     <hr>
	     <!-- #3 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #3: 제주한달살기에 참여하는 인원 및 구성은 어떻게 되나요?</h2>
                <p class="small">예) 남편, 아내, 아이들(남2여1) </p>
                <br>
             </div>
           </div> 
          <div class="form-row">
            <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="member" name="member" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
			 </div>
          </div>
	    <!-- #3 end-->
	     <hr>
	    <!-- #4 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #4: 제주한달살기에 참여하는 가족 연령은 어떻게 되나요?</h2>
                <p class="small">자녀분이 있다면 자녀의 연령은 필히 작성해주세요.</p>
                <br>
             </div>
           </div> 
          <div class="form-row">
            <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="memberAge" name="memberAge" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
			 </div>
          </div>
	    <!-- #4 end-->
	     <hr>
	    <!-- #5 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #5: 제주한달살기의 숙박 기간은 어떻게 되나요?</h2>
              <!--   <p class="small">자녀분이 있다면 자녀의 연령은 필히 작성해주세요.</p> -->
                <br>
             </div>
           </div> 
          <div class="form-row">
           <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="period" name="period" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
			 </div>
          </div>
	    <!-- #5 end-->
	      <hr>
	       <!-- #6 start-->
           <div class="form-row">
              <div class="col-md-12 form-group">
                <h2 class="h5">Question #6: 제주한달살기의 목적이 있다면 작성해 주세요.</h2>
              <!--   <p class="small">자녀분이 있다면 자녀의 연령은 필히 작성해주세요.</p> -->
                <br>
             </div>
           </div> 
          <div class="form-row">
            <div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="goal" name="goal" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
			 </div>
          </div>
	    <!-- #6 end-->
	    
         <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-3" id="goto-step-2">Step 2</button>
        </div>
        <div class="tab-pane fade pt-4" id="step-2" role="tabpanel" aria-labelledby="step-2-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
          <!-- #7 start --> 
          <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #7: 제주 여행경험은 얼마나 있으신가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans1" name="ans1" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <!-- #7 end -->
          <hr>
          <!-- #8 start --> 
             <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #8: 제주 또는 국내,외 여행 경험 중 좋았던 기억은 어떤 것이 있으신가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans2" name="ans2" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <!-- #8 end -->
          <hr>
          <!-- #9 start --> 
             <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #9: 제주 또는 국내,외 여행 경험 중 싫었던 기억은 어떤 것이 있으신가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans3" name="ans3" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <!-- #9 end -->
           <hr>
          <!-- #9 start --> 
            <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #10: 제주에서 꼭 가보고 싶은 곳 또는 선호하시는 장소가 있으신가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans4" name="ans4" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <!-- #9 end -->
          <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-2" id="goto-step-3">Step 3</button>
        </div>
		<div class="tab-pane fade pt-4" id="step-3" role="tabpanel" aria-labelledby="step-3-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
   		 <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #11: 제주에서 꼭 해보고 싶으신 경험, 체험이 있으신가요?</h2>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans5" name="ans5" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <hr>
          	 <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #12: 선호하시는 음식이 있으신가요?</h2>
          		<p class="small">(가족 모두 간단히 적어주셔도 됩니다)</p>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans6" name="ans6" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          <hr>
          	 <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #13: 비선호하시는 음식이 있으신가요?</h2>
          		<p class="small">(가족 모두 간단히 적어주셔도 됩니다)</p>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans7" name="ans7" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
           <hr>
          	 <div class="form-row">
            <div class="col-md-12 form-group">
          		<h2 class="h5">Question #14: 숙박 기간 내 특정일,기념일이 있으신가요?</h2>
          		<p class="small">(예:oo생일, 결혼기념일 등)</p>
              <br>
          		<div class="icheck-primary form-check form-check-inline">
				  	<textarea class="form-control" id="ans8" name="ans8" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
				  </div>
          	</div>
          </div>
          
          <button type="button" class="btn btn-outline-primary btn-lg d-block ml-auto mb-2" id="goto-step-4">Step 4</button>
          
        </div>
        <div class="tab-pane fade pt-4" id="step-4" role="tabpanel" aria-labelledby="step-3-tab" style="background:#fff;border-left:1px solid #dee2e6;border-right:1px solid #dee2e6;border-bottom:1px solid #dee2e6">
        	 <div class="form-row">
	            <div class="col-md-12 form-group">
	          	<h2 class="h5">Question #15: 가족 구성원분의 취미가 무엇인가요?</h2>
	              <br>
	          		<div class="icheck-primary form-check form-check-inline">
					  	<textarea class="form-control" id="ans9" name="ans9" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
					  </div>
	          	</div>
      	    </div>
      	    <hr>
      	     <div class="form-row">
	            <div class="col-md-12 form-group">
	          	<h2 class="h5">Question #16: 가족 구성원분이 좋아하시는 것이 무엇인가요?</h2>
	              <br>
	          		<div class="icheck-primary form-check form-check-inline">
					  	<textarea class="form-control" id="ans10" name="ans10" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
					  </div>
	          	</div>
      	    </div>
      	    <hr>
      	    <div class="form-row">
	            <div class="col-md-12 form-group">
	          	<h2 class="h5">Question #17: 숙박 기간 중 제주 또는 로컬지역의 특정 정보나 안내를 받고 싶으신 것이 있으신가요?</h2>
	              <br>
	          		<div class="icheck-primary form-check form-check-inline">
					  	<textarea class="form-control" id="ans11" name="ans11" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
					  </div>
	          	</div>
      	    </div>
      	    <hr>
      	       <div class="form-row">
	            <div class="col-md-12 form-group">
	          	<h2 class="h5">Question #18: 가족 구성원 중 SNS 활동을 하시는 분이 있으시다면 오픈이 가능 하시다면 주소 부탁 드립니다.</h2>
	              <br>
	          		<div class="icheck-primary form-check form-check-inline">
					  	<textarea class="form-control" id="ans12" name="ans12" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
					  </div>
	          	</div>
      	    </div>
      	    <hr>
          <div class="form-row">
	            <div class="col-md-12 form-group">
	          	<h2 class="h5">Question #19: 실례가 되지 않으신다면 직업을 여쭈어 보아도 될까요?</h2>
	              <br>
	          		<div class="icheck-primary form-check form-check-inline">
					  	<textarea class="form-control" id="ans13" name="ans13" cols="130" rows="5" onkeyup="removeEmojis(this)"></textarea>
					  </div>
	          	</div>
      	    </div>
      	     <div class="form-row">
	            <div class="col-md-12 form-group">
	               <input type="button" class="btn btn-outline-primary btn-lg  ml-auto float-right mb-2" id="submit" value="설문작성완료">
	            </div>
	           </div>
        </div> 
        
  </form>
 <div style="position:fixed;top:50%;left:46%;" class="displayLoding spinner">
  		<span><img src="${pageContext.request.contextPath}/resources/img/spin.gif" /></span>
</div>



    <!-- jQuery first, then Bootstrap JS -->
    <%-- <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> --%>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
      $(function () {
        $('#goto-step-2').on('click', function (e) {
        	
        	  if($("#name").val().length==0){
                 alert("이름을 입력해 주세요.");
                 $("#name").focus();
                 return false;
        	  }else{
            	   $('html, body').animate({
                       scrollTop: 100
                       }, 400, function() {
                         $('#step-2-tab').tab('show');
                      });
               }
        	 
          });
        
        $('#goto-step-3').on('click', function (e) {
            $('html, body').animate({
            scrollTop: 100
            }, 400, function() {
              $('#step-3-tab').tab('show');
            });
          });
        
         $('#goto-step-4').on('click', function (e) {
            $('html, body').animate({
            scrollTop: 100
            }, 400, function() {
              $('#step-4-tab').tab('show');
            });
          });
        
        });

        $("#step-2-tab").on('click',function(e){
        	if($("#name").val().length==0){
                alert("이름을 입력해 주세요.");
                $("#name").focus();
                return false;
              }else{
           	   $('html, body').animate({
                      scrollTop: 100
                      }, 400, function() {
                        $('#step-2-tab').tab('show');
                     });
              }
        });
        
        
        $("#step-3-tab").on('click',function(e){
            $('html, body').animate({
            scrollTop: 100
            }, 400, function() {
              $('#step-3-tab').tab('show');
            });
        });
        $("#step-4-tab").on('click',function(e){
            $('html, body').animate({
            scrollTop: 100
            }, 400, function() {
              $('#step-4-tab').tab('show');
            });
        });
        


  function isCelluar(asValue) {
		//var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
		var exp = /^\d{2,3}-\d{3,4}-\d{4}$/;

		if(asValue.indexOf("-")>0){
			var reg = exp.test(asValue); // 형식에 맞는 경우 true 리턴
			if(reg==false){
				alert("연락처 형식이 올바르지 않습니다.");
				$("#phone").val("");
				return false;
			}
			return true;
		
		}else{
			var str = $('#phone').val().trim();    
	   		var phone = str.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");
			 var reg = exp.test(phone); // 형식에 맞는 경우 true 리턴
			if(reg==false){
				alert("연락처 형식이 올바르지 않습니다.");
				$("#phone").val("");
				return false;
			}
			$('#phone').val(phone);
			return true; 		
		}
	}


    
  $("#submit").on("click",function(){
       	//$("#form").submit();
       			// do ajax thingy here
				 var form1 = new FormData(document.getElementById('form'));
					$.ajax({
					    type: 'POST',
						url: "${pageContext.request.contextPath}/index", 
						data: form1,
						dataType: 'html',
						processData: false, 
						contentType: false, 		
						enctype: 'multipart/form-data',
						success: function(data){
							 $('#successModal').modal('show');
						}
						,beforeSend : function(){
							$(".spinner").removeClass("displayLoding");
						},
						complete:function(){
							$(".spinner").addClass("displayLoding");	
						},error : function(request,status,error){
							//alert("실패사유1  code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
							$('#failModal').modal('show');
						}
					}) ;

 });



    </script>
    
    <!-- 모달 -->
<div id="successModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
			<img src="${pageContext.request.contextPath}/resources/img/check.png" width="5%" height="5%"/>
			&nbsp;&nbsp;<span style="font-size:16px">설문에 응답해 주셔서 감사합니다. </span>
      </div>
      <div class="modal-footer">
       <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/'">OK</button>
      </div>
    </div>

  </div>
</div>


<div id="failModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-body">
			<img src="${pageContext.request.contextPath}/resources/img/fail-icon.png" width="5%" height="5%"/>
			&nbsp;&nbsp;<span style="font-size:16px">You Have Fail.. Try a gain1</span>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-bs-dismiss="modal" onclick="location.href='${pageContext.request.contextPath}/'">OK</button>
      </div>
    </div>
  </div>
</div>

 
  </body>
</html>