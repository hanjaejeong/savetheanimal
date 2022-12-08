<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
<title>Save the Animals</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/css/animate.css">

<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">


<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">

<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/style.css">

<style>
input[type=file]::file-selector-button {
	border: 2px solid white;
	padding: .2em .4em;
	border-radius: .2em;
	background-color: #00bd56;
	transition: 1s;
	color: white;
	border-radius: 5px;
}

.list img {
	height: 125px;
	float: left;
	width: 33%;
	padding: 2px;
	max-height: 250px;
}

#shelter{
   margin-left: 15px;
}}

.custom-select {
	height: calc(3.14rem + 2px);
}
</style>
<script>
   (function() {
      'use strict';
      window.addEventListener('load', function() {
         var forms = document.getElementsByClassName('needs-validation');
         var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
               if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
               }
               form.classList.add('was-validated');
            }, false);
         });
      }, false);
   })();
   
	function oneGender(checkbox) {
         var checkgender = document.getElementsByName('gender')
         checkgender.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }

	function oneType(checkbox) {
		var checktype = document.getElementsByName('type')
			checktype.forEach((item) => {
				if (item !== checkbox) item.checked = false
				})
		}

       function oneNeutered(checkbox) {
         var checkneutered = document.getElementsByName('neutered')
         checkneutered.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }
</script>
<script>


function kind(id)
{       
    //도시
    var kind = document.getElementById(id);
    var kindOption = kind.value;
    var subkind = document.getElementById("ani_kind");
    var subOptions = {
          dog : ["품종","믹스견","기타견종","골든 리트리버","그레이트 덴","그레이트 피레니즈","그레이하운드",
        	  "닥스훈트","달마시언","도베르만","도사","동경견","라사 압소","라이카","래브라도 리트리버",
        	  "로트바일러","말티즈","미니어쳐 핀셔","바셋 하운드","버니즈 마운틴 독","베들링턴 테리어",
        	  "벨지언 세퍼드 독","보더 콜리","보르조이","보스턴 테리어","복서","불 테리어","불독",
        	  "브리터니 스패니얼","비글","비숑 프리제","사모예드","삽살개","샤 페이","세인트 버나드 독",
        	  "셔틀랜드 쉽독","슈나우저","스코티쉬 테리어","시 츄","시바","시베리안 허스키","아메리칸 코커 스패니얼",
        	  "아메리칸 핏 불 테리어","아키타","아프간 하운드","알래스칸 맬러뮤트","오스트레일리언 실키 테리어",
        	  "올드 잉글리시 쉽독","요크셔 테리어","웨스트 하이랜드 화이트 테리어","웰시 코기","이탈리언 코로소 독",
        	  "잉글리시 세터","잉글리시 코커 스패니얼","잭 러셀 테리어","저먼 세퍼드 독","제퍼니즈 스피츠",
        	  "제퍼니즈 친", "진돗개","차우 차우","치와와","캐리 블루 테리어","캐벌리어 킹 찰스 스패니얼",
        	  "코튼 드 툴리어","콜리","티베튼 스패니얼","파피용","퍼그","페키니즈","페터데일 테리어",
        	  "포메라니언","포인터(포인팅 독)","폭스 테리어","푸들","풀리","풍산개","프랜치 불독",
        	  "휘펫"],
              
          cat :  ["품종","믹스묘", "기타묘종","나폴레옹","나폴레옹 롱 헤어","네벨룽","노르웨이지안 포레스트 캣",
        	  "데본 렉스","돈스코이","라펌","라펌 쇼트 헤어","래그돌","러시안 블루","망스","먼치킨","먼치킨 롱 헤어",
        	  "메인 쿤","민스킨","발리니즈","버만","버미즈","버밀라","벵갈 캣","봄베이","브라질리안 쇼트 헤어",
        	  "브리티시 롱 헤어","브리티시 쇼트 헤어","사바나","샤우지","샤트룩스","샴","세렝게티","세루빔",
        	  "셀키릭 랙스","셀키릭 렉스 롱 헤어","소말리","소코키","스노우슈","스코티시 폴드","스키프 토이 밥테일",
        	  "스털링","스핑크스","시베리안","싱가푸라","아메리칸 밥테일","아메리칸 밥테일 쇼트 헤어","아메리칸 쇼트 헤어",
        	  "아메리칸 와이어헤어","아메리칸 컬","아메리칸 컬 롱 헤어","아비시니안","아시안 세미롱 헤어","아시안 쇼트 헤어",
        	  "오리엔탈 롱 헤어","오리엔탈 쇼트 헤어","오스트레일리안 미스트","오조스 아줄리스","오조스 아줄리스 롱 헤어",
        	  "옥시켓","요크 쵸코렛","유럽피언 쇼트 헤어","이그저틱 쇼트 헤어","이집션 마우","자바니즈",
        	  "재패니스 밥테일 롱 헤어","저먼 렉스","제퍼니즈 밥테일","찬틸리/티파니 캣","친칠라 캣",
        	  "카호마니","칼라포인스 쇼트 헤어","캘리포니아 스팽글드 캣","코니시 렉스","코렛","코리아 롱 헤어",
        	  "코리아 쇼트 헤어","쿠릴리안 밥테일 롱 헤어","쿠릴리안 밥테일 쇼트 헤어","킴릭","타이","터키시 밴",
        	  "터키시 앙고라","토이거","통키니즈","페르시안","피터볼드","픽시밥 롱 헤어","핏시-밥","하바나 브라운",
        	  "하이랜더","하이랜드 쇼트 헤어","히말라얀"],
             
          unknown : ["전체"]
    }
    
    switch (kindOption) {
    case "개":
      var subOption = subOptions.dog;
      break;
   	case "고양이":
      var subOption = subOptions.cat;
      break;
   	case "미상":
   	  var subOption = subOptions.unknown;
   	  break;
   }
    //도시 초기화
    subkind.options.length = 0;
    var len = subOption.length;
    for(var i=0; i<len;i++){
       var option = document.createElement('option');
       option.innerText = subOption[i];
       subkind.append(option);
    }
    subOption= subkind.options[subkind.selectedIndex].text;
    
    console.log(kindOption);
    return kindOption;
}
function SubCity() {
	   var subCity = document.getElementById('ani_kind');
	   var subOption = subCity.options[subCity.selectedIndex].text;
	   
	   console.log(subCity.options[subCity.selectedIndex].text);
	   
	   if(subOption!="품종"){
	      subCity.options[subCity.selectedIndex].value = subOption;
	   }
	   else
	   {
	      subCity.options[subCity.selectedIndex].value="";
	   }

	   return subOption;
	}
</script> 
</head>

<body>
	<!-- 유실동물 등록 페이지 -->
	<%@includefile="header.jsp"%>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/image_4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>등록 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">등록</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">등록</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">

						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4" style="text-align: left;">정보</h3>
									<form method="POST" id="contactForm" class="needs-validation" action="${cpath}/register.do"
										novalidate enctype="multipart/form-data">
										<div class="row col-md-12">
											<div class="col-md-6">
												<div>
													<div class="col-md-12">
														<div class="form-group">
															<select class="custom-select" name="ani_color" id="colors"
																required>
																<option>털색</option>
																<option value="흰색">흰색</option>
																<option value="검정색">검정</option>
																<option value="갈색">갈색</option>
																<option value="회색">회색</option>
																<option value="혼합색">혼합</option>
															</select>
															<div class="valid-feedback"></div>
															<div class="invalid-feedback">털색 선택</div>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="text" class="form-control" name="ani_phone"
																id="number" placeholder="연락처" required>
															<div class="valid-feedback"></div>
															<div class="invalid-feedback">연락처 입력</div>
														</div>
													</div>
													<div class="col-md-12 mb-3">
														<div class="form-group">
															<div class="custom-checkbox"
																style="display: flex; justify-content: space-evenly;">
																목격<input type="checkbox" id="notice" name="ani_cate_code"
																	onclick="oneSituation(this)" value="ani_witness"> 보호<input
																	type="checkbox" id="shelter" name="ani_cate_code"
																	onclick="oneSituation(this)"value="ani_protect"> 유실<input
																	type="checkbox" id="lost" name="ani_cate_code"
																	onclick="oneSituation(this)"value="ani_lose">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-12 mb-3">
													<div class="form-group">
														</label> <input onfocus="(this.type = 'date')"
															class="form-control required" name="ani_datetime"
															placeholder="목격/보호/유실 일자" id="date" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">목격/보호/유실 일자 선택</div>
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="form-control" name="ani_occur_address"
															id="place" placeholder="목격/보호/유실 장소" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">장소 입력</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 text-center">
												<div class="form-group">
													<div id="uploadimages border border-primary">
														
													</div>
													<input type="file" id="files" placeholder="이미지 선택"
														class="form-control filesImgs required" name="aimg_name" 
														accept=".jpg" multiple
														style="padding-left: 25%; font-size: 14px;" required>
													<div class="valid-feedback"></div>
													<div class="invalid-feedback">이미지 선택</div>
												</div>

											</div>
											<div class="col-md-6">
												<div class="col-md-12 mb-3">
													<div class="form-group">
														<select class="custom-select" id="ani_age" name = "ani_age">
															<option selected>나이</option>
															<option value="5">0~5</option>
															<option value="10">5~10</option>
															<option value="15">10~15</option>
															<option value="20">15~20</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="col-md-12 mb-3">
													<div class="form-group">
														<select class="custom-select" id="ani_kind" name = "ani_kind" onchange='SubCity()'>
															<option selected>품종</option>
														</select>
													</div>
												</div>
											</div>

											<div class="col-md-6 mb-3">
												<div class="form-group">
													<input type="text" class="form-control" name="ani_center_name"
														id="ani_center_name" placeholder="보호 장소명">
												</div>
											</div>
											<div class="col-md-6 mb-3">
												<div class="form-group">
													<input type="text" class="form-control" name="ani_protect_address"
														id="shelterPlace" placeholder="주소">
												</div>
											</div>
											
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>성별</b> 암컷<input type="checkbox" id="male" name="ani_gender"
															onclick="oneGender(this)" value='암컷'> 수컷<input
															type="checkbox" id="female" name="gender"
															onclick="oneGender(this)" value='수컷'> 미상 <input
															type="checkbox" id="unknown" name="gender"
															onclick="oneGender(this)" value='미상'>
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>축종</b> 개 <input type="checkbox" id="dog" name="ani_livestock"
															onclick="kind('dog')" value='개'> 고양이<input
															type="checkbox" id="cat" name="ani_livestock"
															onclick="kind('cat')" value='고양이'> 미상<input type="checkbox"
															id="unknown" name="ani_livestock" onclick="kind('unknown')" value='미상'>
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>중성화여부</b> 예<input type="checkbox" id="neutered"
															name="ani_neutered" onclick="oneNeutered(this)" value="예"> 아니요<input
															type="checkbox" id="notneutered" name="ani_neutered"
															onclick="oneNeutered(this)" value='아니오'> 미상<input
															type="checkbox" id="unknown" name="ani_neutered"
															onclick="oneNeutered(this)" value='미상'>
													</div>
												</div>
											</div>

											<div class="col-md-12 mb-3">
												<div class="form-group">
													<textarea name="ani_uniqueness" class="form-control" id="message"
														cols="30" rows="4" placeholder="특이사항"
														style="resize: none;"></textarea>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group" style="text-align: center;">
												<div class="submitting">
													<input type="submit" class="btn btn-primary submit"
														value="확인" id="submit" />
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<%@includefile="footer.jsp"%>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
    </svg>
	</div>

	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.timepicker.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>

</body>


</html>