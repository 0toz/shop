<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	margin: 10px auto;
	width: 600;
	border-collapse: collapse;
	font-size: 8pt;
	border-color: navy;
}

table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
	<table>
		<tr>
			<th width="40%">제품Category</th>
			<td width="60%">${vo.category }</td>
		</tr>
		<tr>
			<th width="40%">제품번호</th>
			<td width="60%">${vo.p_num }</td>
		</tr>
		<tr>
			<th width="40%">제품이름</th>
			<td width="60%">${vo.p_name }</td>
		</tr>
		<tr>
			<th width="40%">제품판매사</th>
			<td width="60%">${vo.p_company}</td>
		</tr>
		<tr>
			<th width="40%">제품가격</th>
			<td width="60%">시중가 : <fmt:formatNumber value="${vo.p_price }" pattern="#,###" />원
			<font style="color: tomato">(할인가:<fmt:formatNumber value="${vo.p_saleprice}" pattern="#,###" />원 )</font></td>
		</tr>
		<tr>
			<th width="40%">제품설명</th>
			<td width="60%">${vo.p_content}</td>
		</tr>
		<tr>
			<td colspan="2" align="center"><img src="/images/${k.p_image_s}" style="width: 350px;"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="button"	value="장바구니에 담기"	onclick="add_cart()" /> 
				<input	type="button" value="장바구니 보기"	onclick="show_cart()" /></td>
		</tr>
	</table>
</body>
</html>