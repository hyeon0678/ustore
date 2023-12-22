<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<style>

 table, th, td{
        border: 1px solid black;
        border-collapse: collapse;
        padding: 5px 10px;
    }
    
      input[type="submit"]{
    	height: 50px;
    }    
    
    
    fieldset{
    margin-top: 15px
    
    }
    #notice{
    	display: none;
    	position: absolute;
    	width: 200px;
    	height: 50px;
    	border: 1px solid black;
    	bottom: 1%;
    	right: 1%;
    
    }
    .msg{
    	width: 100%;
    	margin-top: 15px;
    	text-align: center;
    	font-size: 12px;
    }
    
    
</style>
</head>
<body>
	
	<input type="text" placeholder="내용을 입력해주세요"  ><button>검색</button>
	<table>
		<tr>
			<th>회원번호</th>
			<th>이름</th>
			<th>멤버쉽종류</th>
			<th>회원등급</th>
			<th>연락처</th>
			<th>만료날짜</th>
		</tr>
		<!-- 내용 -->
		<c:if test="${list.size()==0}">
		<tr><td colspan="5">게시물이 존재하지 않습니다.</td></tr>
		</c:if>
		<c:forEach items="${list}" var="bbs">
		<tr>
			<td>${bbs.idx}</td>
			<td><a href="detail?idx=${bbs.idx}">${bbs.subject}</a></td>
			<td>${bbs.user_name}</td>
			<td>${bbs.bHit}</td>
			<td>${bbs.reg_date}</td>
			<td><input type="button" onclick="location.href='./del?idx=${bbs.idx}'" value="삭제"/></td>
			<td><input type="button" onclick="location.href='./updateForm?idx=${bbs.idx}'" value="수정"/></td>
		</tr>
		</c:forEach>
	</table>
	</body>
<script>
var msg = "${msg}";
if(msg != ""){
	alert(msg);
}
</script>
</html>