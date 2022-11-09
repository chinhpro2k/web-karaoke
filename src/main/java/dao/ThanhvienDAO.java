package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;

import model.Hoten;
import model.Thanhvien;

public class ThanhvienDAO extends DAO {
	public ThanhvienDAO() {
		super();
// TODO Auto-generated constructor stub
	}

	public boolean kiemtraDangnhap(Thanhvien tv) {
		boolean kq = false;
		if (tv.getUsername().contains("true") || tv.getUsername().contains("=") || tv.getPassword().contains("true")
				|| tv.getPassword().contains("="))
			return false;

		String sql = "{call kiemtraDN(?,?)}"; // su dung stored procedure
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, tv.getUsername());
			cs.setString(2, tv.getPassword());
			ResultSet rs = cs.executeQuery();
			if (rs.next()) {
				tv.setId(rs.getInt("id"));
				tv.setVaiTro(rs.getString("vaitro"));
//hoten
				Hoten ht = new Hoten();
				ht.setHodem(rs.getString("hodem"));
				ht.setTen(rs.getString("ten"));
				tv.setHoTen(ht);
				kq = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = false;
		}
		return kq;
	}
}