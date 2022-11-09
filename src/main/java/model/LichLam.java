package model;

import java.util.Date;

public class LichLam {
	private int id, idBangCong;
	private Date ngayLam;
	private float soGioLam;

	public LichLam() {
	}

	public LichLam(int id, int idBangCong, Date ngayLam, float soGioLam) {
		super();
		this.id = id;
		this.idBangCong = idBangCong;
		this.ngayLam = ngayLam;
		this.soGioLam = soGioLam;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdBangCong() {
		return idBangCong;
	}

	public void setIdBangCong(int idBangCong) {
		this.idBangCong = idBangCong;
	}

	public Date getNgayLam() {
		return ngayLam;
	}

	public void setNgayLam(Date ngayLam) {
		this.ngayLam = ngayLam;
	}

	public float getSoGioLam() {
		return soGioLam;
	}

	public void setSoGioLam(float soGioLam) {
		this.soGioLam = soGioLam;
	}

}
