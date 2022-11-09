<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
String username = (String) request.getParameter("username");
String password = (String) request.getParameter("password");
Thanhvien tv = new Thanhvien();
tv.setUsername(username);
tv.setPassword(password);
ThanhvienDAO dao = new ThanhvienDAO();
boolean kq = dao.kiemtraDangnhap(tv);
if (kq && (tv.getVaiTro().equalsIgnoreCase("sinhvien"))) {
	session.setAttribute("sinhvien", tv);
	response.sendRedirect("gdchinhsinhvien.jsp");
} else if (kq && (tv.getVaiTro().equalsIgnoreCase("giangvien"))) {
	session.setAttribute("giangvien", tv);
	response.sendRedirect("gv\\gdchinhgv.jsp");
} else {
	response.sendRedirect("gddangnhap.jsp?err=fail");
}
%>