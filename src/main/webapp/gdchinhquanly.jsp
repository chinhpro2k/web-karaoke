<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý nhân viên</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
</head>
<body>
	<div>
		<div>Chào ${quanly.hoTen.ten}</div>
		<div></div>
		<div class="d-flex justify-content-center" style="margin-bottom: 16px">
			<h1>Quản lý nhân viên</h1>
		</div>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Tên nhân viên</th>
					<th scope="col">Ngày</th>
					<th scope="col">Số giờ làm</th>
					<th scope="col">Đơn giá làm</th>
					<th scope="col">Tổng</th>
					<th scope="col">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach  items="${listbangcong}" var="mhnv" varStatus="i">
					<tr>
						<th scope="row">${i.count}</th>
						<td>1</td>
						<td>${mhnv.tuanLam}</td>
						<td>${mhnv.soGioLam}</td>
						<td>${mhnv.tong}</td>
						<td>${mhnv.tienCong}</td>
						<td><a style="color: #b02a37"
							href="${pageContext.request.contextPath}/chonNhanVienServlet?idnv=4">xem
								chi tiết</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>