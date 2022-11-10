package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.BangCong;
import model.Hoten;
import model.LichLam;
import model.NhanVien;

public class LichLamDAO extends DAO {
	public LichLamDAO() {
		super();
// TODO Auto-generated constructor stub
	}

	public ArrayList<LichLam> getLichLam(int idbc) {
		ArrayList<LichLam> lichlam = null;
		String sql = "{call layLichLam(?)}"; // su dung stored procedure
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, idbc);
			ResultSet rs = cs.executeQuery();
			while (rs.next()) {
				if (lichlam == null)
					lichlam = new ArrayList<LichLam>();
				LichLam ll = new LichLam();
				ll.setId(rs.getInt("id"));
				ll.setIdBangCong(rs.getInt("idBangCong"));
				
				
				BangCong bc=new BangCong();
				bc.setDonGiaLam(rs.getInt("idBangCong"));
				bc.setIdNhanVien(rs.getInt("idNhanVien"));
				bc.setTongGioLam(rs.getFloat("tongGioLam"));
				bc.setDonGiaLam(rs.getFloat("donGiaLam"));
				bc.setTienCong(rs.getFloat("tienCong"));
				bc.setTong(rs.getFloat("tong"));
				
				
				NhanVien nv=new NhanVien();
				Hoten ht=new Hoten();
				ht.setHodem(rs.getString("hodem"));
				ht.setTen(rs.getString("ten"));
				nv.setHoTen(ht);
				
				bc.setNhanVien(nv);
				
				
				ll.setBangCong(bc);
				
				
				
				ll.setNgayLam(rs.getDate("ngayLam"));
				ll.setSoGioLam(rs.getFloat("soGioLam"));
				lichlam.add(ll);
			}
		} catch (Exception e) {
			e.printStackTrace();
			lichlam=null;
		}
		return lichlam;
	}
}
