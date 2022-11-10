package dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import java.sql.CallableStatement;

import model.BangCong;
import model.Hoten;
import model.NhanVien;

public class BangCongDAO extends DAO {
	public BangCongDAO() {
		super();
// TODO Auto-generated constructor stub
	}

	public ArrayList<BangCong> getListBangCong() {
		ArrayList<BangCong> kq = null;
		String sql = "{call kiDangDK()}"; // su dung stored procedure
		try {
			CallableStatement cs = con.prepareCall(sql);
			ResultSet rs = cs.executeQuery();
			while (rs.next()) {
				if (kq == null)
					kq = new ArrayList<BangCong>();
				BangCong kh = new BangCong();
				kh.setId(rs.getInt("id"));
				kh.setIdNhanVien(rs.getInt("idNhanVien"));
				NhanVien nv=new NhanVien();
				Hoten ht=new Hoten();
				ht.setHodem(rs.getString("hodem"));
				ht.setTen(rs.getString("ten"));
				nv.setId(rs.getInt("idNhanVien"));
				nv.setHoTen(ht);
				kh.setNhanVien(nv);
				kh.setTuanLam(rs.getString("tuanLam"));
				kh.setTongGioLam(rs.getFloat("tongGioLam"));
				kh.setDonGiaLam(rs.getFloat("donGiaLam"));
				kh.setTong(rs.getFloat("tong"));
				kh.setTienCong(rs.getFloat("tienCong"));
				kh.setTrangThaiThanhToan(rs.getBoolean("trangThaiThanhToan"));
				kq.add(kh);
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}

	public BangCong getBangCong(int idnv) {
		BangCong bc = new BangCong();
		String sql = "{call layBangCong(?)}"; // su dung stored procedure
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, idnv);
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				bc.setId(rs.getInt("id"));
				bc.setIdNhanVien(rs.getInt("idNhanVien"));
				bc.setTuanLam(rs.getString("tuanLam"));
			}
		} catch (Exception e) {
			e.printStackTrace();

		}
		return bc;
	}

}
