<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết nhân viên</title>
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
		<div class="d-flex justify-content-center" style="margin-bottom: 16px">
			<h1>Chi tiết nhân viên</h1>
		</div>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Tên nhân viên</th>
					<th scope="col">Tuần làm</th>
					<th scope="col">Ngày làm</th>
					<th scope="col">Số giờ làm</th>
					<th scope="col">Đơn giá làm</th>
					<th scope="col">Tổng</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listLichLam}" var="mhnv" varStatus="i">
					<tr>
						<th scope="row">${i.count}</th>
						<td>${mhnv.bangCong.nhanVien.hoTen.ten}</td>
						<td>${mhnv.idBangCong}</td>
						<td>${mhnv.ngayLam}</td>
						<td>${mhnv.soGioLam}</td>
						<td>${mhnv.bangCong.donGiaLam}</td>
						<td>${mhnv.bangCong.tong}</td>
					</tr>
				</c:forEach>
					<tr>
						<th scope="row">Tổng</th>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>${listLichLam[0].bangCong.tienCong}</td>
					</tr>
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
			<a style="color: #000000;border: 1px solid;padding: 6px 12px "
							href="${pageContext.request.contextPath}/thanhToanServlet?idnv=${idNV}">Thanh toán</a>
		</div>
	</div>
</body>
</html>