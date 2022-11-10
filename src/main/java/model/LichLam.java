package model;

import java.util.Date;

public class LichLam {
	private int id, idBangCong;
	private Date ngayLam;
	private float soGioLam;
	private BangCong bangCong;

	public LichLam() {
	}

	public LichLam(int id, int idBangCong, Date ngayLam, float soGioLam, BangCong bangCong) {
		super();
		this.id = id;
		this.idBangCong = idBangCong;
		this.ngayLam = ngayLam;
		this.soGioLam = soGioLam;
		this.bangCong = bangCong;
	}

	public BangCong getBangCong() {
		return bangCong;
	}

	public void setBangCong(BangCong bangCong) {
		this.bangCong = bangCong;
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
