<%@page import="com.example.demo.sist.last.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap"
          rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <title>Insert title here</title>
    <style type="text/css">
    .m {
    font-size: 12px;
    color: gray;
    }
    
    .x { 
    text-decoration:none;
    color: gray;
    cursor: pointer;
    }
    
    table {
	margin: auto;
	align-content: center;
	}

	.in {
	text-align: center;
	font-size: 18px;
	font-family: 'Jalnan';
	color:black;
	}
	
	.out {
	text-decoration: none;
	color:black;
	cursor: pointer;
	
	}
	
	.booking, .notify, .event, .service {
	text-decoration: none;	
	color: gray;
	cursor: pointer;
	
	}
	
	.tb {
	margin-top: -250px;
	width:600px;
	}

	.cc {
	width:100px;
	background-color: white;
	}
	
	.mypoint, .mycoupon, .booking, .event, .insurance, .transportation {
	
	text-decoration: none;
	color: black;
	cursor: pointer;
	font-size: 16px;
	
	}
	
	.center, .announce, .qna, .chatbot, .ask {
	
	text-decoration: none;
	color: black;
	cursor: pointer;
	font-size: 16px;
	}
	
	.i {
	font-size: 30px;
	text-decoration: none;
	color: black;
	font-weight: bold;
	}
	
	.myinfo {
	float: right;
	text-decoration: none;
	color: black;
	}
	
	.allmem {
	border: 1px solid black;
	}
	

    </style>
</head>
<body>
<br><br><br>
<div>
<div class="in"><b>MY TRIVIEW</b></div>
<br><br><br><br><br><br>
</div>
	
<table class="tb" style=" width:600px;">
<div>
	<br><br><br><br><br><br>
	<tr>
		<td>
		<br>
		<div>
		<a class="i">
			<i class="bi bi-person-fill"></i>&nbsp;
		${memberDto.info_nickname }&nbsp;&nbsp;&nbsp;
	
		</a>
		<a href='/member/member-mypage' class="myinfo">나의 정보</a>
		</div>
		<br><br><br>
		</td>
	</tr>

	<tr>
		<td>
		<a class="mypoint">
		<div style="margin-bottom: 15px;">		
		<span>TRIVIEW 포인트</span>
		<i class="bi bi-caret-right-fill"></i> 
		<span style="float: right;"><b>${memberDto.info_point }</b> P</span>
		</div>
		</a>
		</td>
	</tr>	

	<tr>
		<td>
		<a class="mycoupon">
		<div>
		<span>TRIVIEW 쿠폰</span>&nbsp;&nbsp;&nbsp;
		<i class="bi bi-caret-right-fill"></i>
		<span style="float: right; margin-bottom: 10px;"><b>${memberDto.info_coupon }</b> 개</span>
		</div>
		</a>
		<br><br><br><br>
		</td>
	</tr>

	<br><br>
	<tr>
		<td>
	<span style="font-size: 25px;"><b>예약내역</b></span><br><br><br>
	<div>
	<a class="booking" style="margin-bottom: 15px;"
	onclick="location.href='/member/myreservation'"><span style="margin-right: 10px;"><i class="bi bi-house-door"></i>&nbsp;&nbsp;국내숙소</span><span><i class="bi bi-caret-right-fill" style=" float: right;"></i></span></a>
	<br><br>
	<a class="insurance" style="margin-bottom: 15px;"><span style="margin-right: 10px;"><i class="bi bi-suitcase2-fill"></i>&nbsp;&nbsp;여행자보험</span><span><i class="bi bi-caret-right-fill" style="float: right;"></i></span></a>
	<br><br>
	<a class="transportation" style="margin-bottom: 15px;"><span style="margin-right: 10px;"><i class="bi bi-bus-front-fill"></i>&nbsp;&nbsp;교통편</span><span><i class="bi bi-caret-right-fill" style="float: right;"></i></span></a>
	<br><br><br><br>
	</div>
	</td>
	</tr>
	<tr>
		<td>
		<span style="font-size: 25px;"><b>혜택<br><br></b></span>
		<a class="event"  onclick="location.href='/notice/event'">이벤트</a><br><br><br><br>
		</td>
	</tr>
	<tr>
		<td>
		<div>
		<span style="font-size: 25px;"><b>고객센터</b></span>
		<span style="color:gray; float: right;">365일 오전 9시~익일 오전 2시</span><br><br>
		</div>
		<div style="display: flex;">
		<a class="announce"><i class="bi bi-megaphone" style="font-size:70px; margin-right: 92px;"></i><br>&nbsp;공지사항</a>	
	
		<a class="qna">&nbsp;&nbsp;<i class="bi bi-question-circle" style="font-size:70px; margin-right: 92px;"></i><br>자주 묻는 질문</a>
	
		<a class="chatbot"><i class="bi bi-robot" style="font-size:70px; margin-right: 92px;"></i><br>&nbsp;&nbsp;챗봇상담</a>
	
		<a class="ask"><i class="bi bi-headset" style="font-size:70px;"></i><br>고객상담센터</a>
		</div>	
		<br><br><br>
		</td>
	</tr>
	<tr>
		<td>
		<span style="font-size: 25px;"><b>서비스</b></span>
		<br><br>
		<a href="/triview/info" style="cursor:pointer; text-decoration: none; color: black;">TRIVIEW 정보</a><br><br>
		<a href="#" style="cursor:pointer; text-decoration: none; color: black;">설정</a>
		</td>
	</tr>
	</table>
</body>
</html>