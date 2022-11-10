package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BangCongDAO;
import dao.LichLamDAO;
import model.BangCong;
import model.LichLam;

@WebServlet(name = "ThanhToanServlet", value = "/thanhToanServlet")
public class ThanhToanServlet extends HttpServlet {
	  @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        doPost(request,response);
	    }
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int idnv = Integer.parseInt(request.getParameter("idnv"));
//			System.out.println(idnv+"==============");
//			BangCongDAO bangCongDAO = new BangCongDAO();
//			LichLamDAO lichLamDAO = new LichLamDAO();
//			BangCong bc = bangCongDAO.getBangCong(idnv);
//			System.out.println(bc.getId()+"==============");
//			ArrayList<LichLam> listLich=lichLamDAO.getLichLam(bc.getId());
//			System.out.println(listLich);
//
////		        ArrayList<LopHocPhan> listLopHocPhan = new LopHocPhanDAO().getLHPchoSVdangki(idmhkh);
//			   request.getSession().setAttribute("idNV",idnv);
//		        request.getSession().setAttribute("listLichLam",listLich);
		        request.getRequestDispatcher("/gdthanhtoan.jsp").forward(request,response);
	    }
}
