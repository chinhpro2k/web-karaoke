package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import dao.BangCongDAO;
import dao.ThanhvienDAO;
import model.BangCong;
import model.Thanhvien;

@WebServlet(name = "DangNhapServlet", value = "/dangNhapServlet")
public class DangNhapServlet extends HttpServlet{
	   @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doPost(request,response);
	    }
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String userName = request.getParameter("username");
	        String password = request.getParameter("password");
	        Thanhvien thanhVien = new Thanhvien();
	        thanhVien.setUsername(userName);
	        thanhVien.setPassword(password);
	        ThanhvienDAO thanhVienDAO = new ThanhvienDAO();
	        BangCongDAO bangCongDAO=new BangCongDAO();
	        boolean ok = thanhVienDAO.kiemtraDangnhap(thanhVien);
	        ArrayList<BangCong> listBangCong=bangCongDAO.getListBangCong();
	        System.out.print(listBangCong);
	        if(ok && (thanhVien.getVaiTro().equalsIgnoreCase("quản lý"))){
	            request.setAttribute("quanly",thanhVien);
	            request.setAttribute("listbangcong",listBangCong);
	            request.getRequestDispatcher("gdchinhquanly.jsp").forward(request,response);
	        }else{
	            response.sendRedirect("gddangnhap.jsp?err=fail");
	        }
	    }
}
