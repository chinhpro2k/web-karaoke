package model;

public class BangCong {
	private int id;
	private NhanVien nhanVien;
	private int idNhanVien;
	private String tuanLam;
	private float tongGioLam,donGiaLam,tong,tienCong;
	private boolean trangThaiThanhToan;
	
	public int getIdNhanVien() {
		return idNhanVien;
	}
	public void setIdNhanVien(int idNhanVien) {
		this.idNhanVien = idNhanVien;
	}
	public BangCong() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BangCong(int id, int idNhanVien, String tuanLam, float tongGioLam, float donGiaLam, float tong, float tienCong,
			boolean trangThaiThanhToan) {
		super();
		this.id = id;
		this.idNhanVien = idNhanVien;
		this.tuanLam = tuanLam;
		this.tongGioLam = tongGioLam;
		this.donGiaLam = donGiaLam;
		this.tong = tong;
		this.tienCong = tienCong;
		this.trangThaiThanhToan = trangThaiThanhToan;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public NhanVien getNhanVien() {
		return nhanVien;
	}
	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}
	public String getTuanLam() {
		return tuanLam;
	}
	public void setTuanLam(String tuanLam) {
		this.tuanLam = tuanLam;
	}
	public float getTongGioLam() {
		return tongGioLam;
	}
	public void setTongGioLam(float tongGioLam) {
		this.tongGioLam = tongGioLam;
	}
	public float getDonGiaLam() {
		return donGiaLam;
	}
	public void setDonGiaLam(float donGiaLam) {
		this.donGiaLam = donGiaLam;
	}
	public float getTong() {
		return tong;
	}
	public void setTong(float tong) {
		this.tong = tong;
	}
	public float getTienCong() {
		return tienCong;
	}
	public void setTienCong(float tienCong) {
		this.tienCong = tienCong;
	}
	public boolean isTrangThaiThanhToan() {
		return trangThaiThanhToan;
	}
	public void setTrangThaiThanhToan(boolean trangThaiThanhToan) {
		this.trangThaiThanhToan = trangThaiThanhToan;
	}
	
}
