<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	  for : 반복문
	    1. 일반 for
	        for(초기값;조건식;증가식)
	        {
	        	반복수행문장
	        }
	        ["임현서","황미애","김철"]
	        ["여자","여자","남자"]
	        [25,20,20]
	    2. forEach구문
	         for(let data of 배열) => for(데이터형 변수:배열,컬렉션)
	         {            ==
	         	반복수행문장 ==> 배열에 실제 값을 읽어온다
	         }
	         for(let data in 배열)
	         {            ==
	         	반복수행문장 ==> 배열의 인덱스 번호를 읽어 온다
	         	  => 오라클(JOIN) WHERE no=no
	         }
	    3. map => 반복문 (가장 많이 사용되는 반복문) => vue,react
	         사용법
	            배열명.map(function(데이터)){
	                     =============== 자동 호출 (배열에서 읽은 값 1개를 매개변수로 첨부)
	            	반복 출력물
	            }
	              => 배열명.map((데이터)=>{
	                                 == 화살표 (function과 return을 제거)
	                                 == 람다식 : 함수의 포인터
	              })
	     4. forEach
	          배열명
	          
	          ==> if , if~else
	          ==> for
	          ==> break
	          ==> 출력값을 만드는 곳이 아니다 ==> 자바(오라클)
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload=function(){
	const names=["임현서","황미애","김철","한송이","모진섭"]
	const sexs=["여자","여자","남자","여자","남자"]

	// 일반 for
	document.write("<h3>일반for문</h3>")
	
	// length => 배열의 데이터 갯수
	// 자바스크립트의 배열 => 인덱스 번호는 0번부터 시작
	for(let i=0;i<names.length;i++)
	{
		document.write(names[i]+"&nbsp;")
	}
	document.write("<hr>")
	
	// for of
	document.write("<h3>for of</h3>")
	// for(String name:names)
	for(let name of names)
	{
		document.write(name+"&nbsp;")
	}
	document.write("<hr>")
	
	// 배열의 인덱스 번호 출력
	// 여러개의 배열을 한번에 출력 ==> 오라클 (조인)
	document.write("<h3>for in</h3>")
	for(let index in names)
	{
		document.write(names[index]+"("+sexs[index]+")<br>"+"&nbsp;")
	}
	document.write("<hr>")
	
	// 함수형으로 변경 => map / forEach
	// 일반 for, map , forEach
	
	document.write("<h3>map 사용법 1</h3>")
	// 형식 => ajax
	names.map(function(name){
		document.write(name+"&nbsp;")
	});
	document.write("<hr>")
	
	// 가장 많이 사용되는 함수
	document.write("<h3>map 사용법 2</h3>")
	names.map((name)=>{
		document.write(name+"&nbsp;")
	});
	document.write("<hr>")
	
	document.write("<h3>forEach 사용법 1</h3>")
	// 형식 => ajax
	names.map(function(name){
		document.write(name+"&nbsp;")
	});
	document.write("<hr>")
	document.write("<h3>forEach 사용법 2</h3>")
	names.map((name)=>{
		document.write(name+"&nbsp;")
	});
	document.write("<hr>")
}
</script>
</head>
<body>

</body>
</html>