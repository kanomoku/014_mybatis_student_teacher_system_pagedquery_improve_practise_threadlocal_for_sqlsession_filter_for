<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript"
	src="/mybatis014studentteachersystem/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	var pageSize = ${showPageInfo.pageSize};
	var pageNum = ${showPageInfo.pageNum};
	var sname = "${showPageInfo.sname}";
	var tname = "${showPageInfo.tname}";
	
	$.each($(":radio"),function(i,n){
		if($(n).val() ==pageSize){
			$(n).attr("checked","checked");
		}
	});
	
	$(":text[name='sname']").val(sname);
	$(":text[name='tname']").val(tname);
	
	$("button").click(function(){
	location.href = "show?pageSize=" + pageSize
							+ "&pageNumber=1&tname="
							+ $(":text[name='tname']").val + "&sname="
							+ $(":text[name='sname']").val;
				});
	});
</script> -->
</head>
<form action="show" method="post">
	学生姓名：<input type="text" name="sname" /><br>
	老师姓名：<input type="text" name="tname" /><br>
<input type="submit" value="查询"/>
</form>
<body>
<!-- 	<input type="radio" value="2" name="pageSize" />2
	<input type="radio" value="3" name="pageSize" />3
	<input type="radio" value="4" name="pageSize" />4<br /> 
	学生姓名：<input type="text" name="sname" />
	老师姓名：<input type="text" name="tname" />
	<button>查询</button><br /> -->

	<table border="1">
		<tr>
			<th>学生编号</th>
			<th>学生姓名</th>
			<th>年龄</th>
			<th>任课老师</th>
		</tr>
		<c:forEach items="${showPageInfo.list}" var="stu">
			<tr>
				<td>${stu.id}</td>
				<td>${stu.name}</td>
				<td>${stu.age}</td>
				<td>${stu.teacher.name}</td>
			</tr>
		</c:forEach>
	</table>
	<a
		href="show?pageNum=${showPageInfo.pageNum-1}&pageSize=${showPageInfo.pageSize}"
		<c:if test="${showPageInfo.pageNum<=1}" > onclick="javascript:return false;" </c:if>
		>上一页</a>
	<a
		href="show?pageNum=${showPageInfo.pageNum+1}&pageSize=${showPageInfo.pageSize}"
		<c:if test="${showPageInfo.pageNum>= showPageInfo.total}"> onclick="javascript:return false;"</c:if>
		>下一页</a>
</body>
</html>