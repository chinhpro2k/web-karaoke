<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dang nhap</title>
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
	<%
	if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
	%>
	<h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4>
	<%
	} else if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
	%>
	<h4 color="red">Sai tên đăng nhập/mật khẩu!</h4>
	<%
	}
	%>
	<div class="d-flex justify-content-center align-items-center" style="height: 100vh">
		<div class="d-flex flex-column align-items-center">
			<h2>Đăng nhập</h2>
			<form name="dangnhap" action="dangNhapServlet" method="post">
				<table border="0">
					<tr>
						<td>Tên đăng nhập:</td>
						<td><input type="text" name="username" id="username" required /></td>
					</tr>
					<tr>
						<td>Mật khẩu:</td>
						<td><input type="password" name="password" id="password"
							required /></td>

					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Đăng nhập" /></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>