CREATE DATABASE novel;
use novel;
-- Tạo bảng người dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INT PRIMARY KEY AUTO_INCREMENT,
    TenDangNhap VARCHAR(50) NOT NULL ,
    MatKhau VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
);
-- Tạo bảng danh mục truyện
CREATE TABLE DanhMucTruyen (
    MaDanhMuc INT PRIMARY KEY AUTO_INCREMENT,
    TenDanhMuc VARCHAR(50) NOT NULL
);
-- Tạo bảng truyện
CREATE TABLE Truyen (
    MaTruyen INT PRIMARY KEY AUTO_INCREMENT,
    TieuDe VARCHAR(255) NOT NULL,
    MaTacGia INT,
    TheLoai VARCHAR(50),
    MoTa TEXT,
    ThoiDiemTao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaTacGia) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaDanhMuc) REFERENCES DanhMucTruyen(MaDanhMuc)
);

-- Tạo bảng lịch sử truyện
CREATE TABLE LichSuDocTruyen (
    MaLichSu INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaTruyen INT,
    ChapDocGanNhat INT,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Tạo bảng báo cáo lỗi truyện
CREATE TABLE BaoCaoLoi (
    MaBaoCao INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaTruyen INT,
    NoiDungBaoCao TEXT,
    ThoiDiemBaoCao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);
-- Tạo bảng chương truyện
CREATE TABLE ChuongTruyen (
    MaChuong INT PRIMARY KEY AUTO_INCREMENT,
    MaTruyen INT,
    SoChuong INT,
    TieuDeChuong VARCHAR(255),
    NoiDungChuong TEXT,
    ThoiDiemXuatBan TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);
-- Tạo bảng bình luận
CREATE TABLE BinhLuan (
    MaBinhLuan INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaTruyen INT,
    MaChuong INT,
    NoiDungBinhLuan TEXT,
    ThoiDiemBinhLuan TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen),
     FOREIGN KEY (MaChuong) REFERENCES ChuongTruyen(MaChuong)
);

