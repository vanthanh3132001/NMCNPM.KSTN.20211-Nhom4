﻿CREATE DATABASE nmcnpm_team4
GO

USE nmcnpm_team4
GO

-- 1. Người dùng
CREATE TABLE nguoi_dung(
	id INT CONSTRAINT PK_nguoi_dung PRIMARY KEY IDENTITY(1, 1),
	taiKhoan VARCHAR(255) UNIQUE NOT NULL,
	matKhau VARCHAR(255) NOT NULL
)
GO

INSERT INTO nguoi_dung(taiKhoan, matKhau) VALUES
('admin', 1)
GO

-- 2. Nhân khẩu
CREATE TABLE nhan_khau(
	idNhanKhau INT CONSTRAINT PK_nhan_khau PRIMARY KEY IDENTITY(1, 1),
	hoTen NVARCHAR(255) NOT NULL,
	biDanh NVARCHAR(255),
	ngaySinh DATE NOT NULL,
	noiSinh NVARCHAR(255) NOT NULL,
	gioiTinh NVARCHAR(255) CONSTRAINT CHK_nhan_khau_gioi_tinh CHECK (gioiTinh IN (N'Nam', N'Nữ')) NOT NULL,
	nguyenQuan NVARCHAR(255) NOT NULL,
	danToc NVARCHAR(255) NOT NULL,
	tonGiao NVARCHAR(255) NOT NULL,
	quocTich NVARCHAR(255) NOT NULL,
	ngheNghiep NVARCHAR(255),
	noiLamViec NVARCHAR(255),
	cmnd INT,
	ngayCap DATE,
	chuyenDenNgay DATE,
	noiThuongTruTruoc NVARCHAR(255),
	trangThai NVARCHAR(255) CONSTRAINT CHK_nhan_khau_trang_thai CHECK (trangThai IN (N'Thường trú', N'Tạm trú', N'Tạm vắng', N'Đã mất', N'Đã chuyển đi')) NOT NULL
)
GO

INSERT INTO nhan_khau(hoTen, biDanh, ngaySinh, noiSinh, gioiTinh, nguyenQuan, danToc, tonGiao, quocTich, ngheNghiep, noiLamViec, cmnd, ngayCap, chuyenDenNgay, noiThuongTruTruoc, trangThai) VALUES
(N'Trịnh Văn An', NULL, '1990-12-07', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giáo Viên', N'Trường THCS Chu Văn An', 123456789, '2010-10-10', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Trần Thanh Duyên', NULL, '1997-12-23', N'Bệnh viện Đại học Y 2', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nhân viên văn phòng', N'Công ty ABC', 123456781, '2010-10-1', '2019-12-12', N'Số 2 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),
(N'Nguyễn Minh Quân', NULL, '1995-05-31', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Kỹ sư', N'Viettel', 123456782, '2010-10-2', '2019-12-13', N'Số 3 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Nguyễn Tiến Dũng', NULL, '1964-06-03', N'Bệnh viện Đại học Y 1', N'Nam', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Phó giám đốc', N'Công ty EN', 123456783, '2010-10-3', '2019-12-14', N'Số 4 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),
(N'Vũ Mỹ Linh', NULL, '1965-12-06', N'Bệnh viện Đại học Y 3', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'Tại nhà', 123456784, '2010-10-4', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Nguyễn Tiến Đạt', NULL, '1990-09-09', N'Bệnh viện Đại học Y 5', N'Nam', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Kỹ sư điện', N'EVP', 123456785, '2010-10-5', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Nguyễn Trà My', NULL, '1997-12-12', N'Bệnh viện Đại học Y 4', N'Nữ', N'Hải Dương', N'Kinh', N'Thiên chúa giáo', N'Việt Nam', N'Luật sư', N'Văn phòng luật sư 123', 123456786, '2010-10-6', '2019-12-11', N'Số 1 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Trần Văn Nam', NULL, '1980-07-09', N'Bệnh viện Đại học Y 1', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Giảng viên đại học', N'Đại học Bách khoa Hà Nội', 123456787, '2010-10-7', '2019-12-12', N'Số 2 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi'),
(N'Nguyễn Minh Tuyết', NULL, '1985-09-02', N'Bệnh viện Đại học Y 2', N'Nữ', N'Nam Định', N'Kinh', N'Không', N'Việt Nam', N'Bác sĩ', N'Bệnh viện quốc tế HJK', 123456788, '2010-10-8', '2019-12-13', N'Số 3 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm vắng'),
(N'Trần Trung Kiên', NULL, '2008-12-25', N'Bệnh viện Đại học Y 2', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường THCS Chu Văn An', NULL, NULL, '2019-12-14', N'Số 4 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Thường trú'),
(N'Trần Thúy Ngọc', NULL, '2013-01-15', N'Bệnh viện Đại học Y 5', N'Nữ', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Học sinh', N'Trường tiểu học Chu Văn An', NULL, NULL, '2019-12-16', N'Số 10 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Tạm trú'),
(N'Lý Văn Công', NULL, '1945-06-04', N'Bệnh viện Đại học Y 3', N'Nam', N'Hà Nội', N'Kinh', N'Không', N'Việt Nam', N'Về hưu', N'Không', 123456780, '2010-10-9', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã mất'),
(N'Bùi Thị Hà', NULL, '1948-02-03', N'Bệnh viện Đại học Y 4', N'Nữ', N'Hải Phòng', N'Kinh', N'Không', N'Việt Nam', N'Nội trợ', N'Tại nhà', 123456790, '2010-10-11', '2019-12-15', N'Số 5 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Đã chuyển đi')
GO

-- 3. Hộ khẩu
CREATE TABLE ho_khau(
	idHoKhau INT CONSTRAINT PK_ho_khau PRIMARY KEY IDENTITY(1, 1),
	idChuHo INT CONSTRAINT FK_ho_khau_nhan_khau FOREIGN KEY REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	tinhThanhPho NVARCHAR(255) NOT NULL,
	quanHuyen NVARCHAR(255) NOT NULL,
	phuongXa NVARCHAR(255) NOT NULL,
	diaChi NVARCHAR(255) NOT NULL,
	ngayTao DATE NOT NULL,
	trangThai NVARCHAR(255) CONSTRAINT CHK_ho_khau_trang_thai CHECK (trangThai IN (N'Thường trú', N'Đã chuyển đi')) NOT NULL
)
GO

INSERT INTO ho_khau(idChuHo, tinhThanhPho, quanHuyen, phuongXa, diaChi, ngayTao, trangThai) VALUES
(1, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 1 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-08', N'Thường trú'),
(2, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 2 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-07', N'Đã chuyển đi'),
(3, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 3 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-06', N'Thường trú'),
(4, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 4 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-05', N'Thường trú'),
(5, N'Hà Nội', N'Hai Bà Trưng', N'Bách Khoa', N'Số 5 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-11-05', N'Thường trú')
GO

-- 4. Hộ khẩu - nhân khẩu
CREATE TABLE ho_khau_nhan_khau(
	idHoKhau INT CONSTRAINT FK_ho_khau_nhan_khau_ho_khau FOREIGN KEY REFERENCES ho_khau(idHoKhau),
	idNhanKhau INT CONSTRAINT FK_ho_khau_nhan_khau_nhan_khau FOREIGN KEY REFERENCES nhan_khau(idNhanKhau),
	quanHeChuHo NVARCHAR(255) NOT NULL,
	CONSTRAINT PK_ho_khau_nhan_khau PRIMARY KEY (idHoKhau, idNhanKhau)
)
GO

INSERT INTO ho_khau_nhan_khau(idHoKhau, idNhanKhau, quanHeChuHo) VALUES
(1, 6, N'Anh trai'),
(1, 7, N'Vợ'),
(2, 8, N'Bố'),
(3, 9, N'Bố'),
(4, 10, N'Con trai'),
(5, 12, N'Ông ngoại'),
(5, 13, N'Bà ngoại')
GO

-- 5. Chuyển nhân khẩu
CREATE TABLE chuyen_nhan_khau(
	id INT PRIMARY KEY IDENTITY(1, 1),
	idNhanKhau INT CONSTRAINT FK_chuyen_nhan_khau_nhan_khau REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	ngayChuyenDi DATE NOT NULL,
	noiChuyenDen NVARCHAR(255) NOT NULL,
	ghiChu NVARCHAR(255)
)
GO

INSERT INTO chuyen_nhan_khau(idNhanKhau, ngayChuyenDi, noiChuyenDen, ghiChu) VALUES
(13, '2020-10-10', N'Số 10 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', NULL)
GO

-- 6. Chuyển hộ khẩu
CREATE TABLE chuyen_ho_khau(
	id INT PRIMARY KEY IDENTITY(1, 1),
	idHoKhau INT CONSTRAINT FK_chuyen_ho_khau_ho_khau REFERENCES ho_khau(idHoKhau) NOT NULL,
	ngayChuyenDi DATE NOT NULL,
	noiChuyenDen NVARCHAR(255) NOT NULL,
	ghiChu NVARCHAR(255)
)
GO

INSERT INTO chuyen_ho_khau(idHoKhau, ngayChuyenDi, noiChuyenDen, ghiChu) VALUES
(2, '2020-10-09', N'Số 9 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', NULL)
GO

-- 7. Tạm trú
CREATE TABLE tam_tru(
	id INT CONSTRAINT PK_tam_tru PRIMARY KEY IDENTITY(1, 1),
	idNhanKhau INT CONSTRAINT FK_tam_tru_nhan_khau FOREIGN KEY REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	noiThuongTru NVARCHAR(255) NOT NULL,
	noiTamTru NVARCHAR(255) NOT NULL,
	tuNgay DATE NOT NULL,
	denNgay DATE NOT NULL,
	lyDo NVARCHAR(255)
)
GO

INSERT INTO tam_tru(idNhanKhau, noiThuongTru, noiTamTru, tuNgay, denNgay, lyDo) VALUES
(11, N'Số 10 Lê Thanh Nghị, Quận Hai Bà Trưng, Hà Nội', N'Số 6 Tạ Quang Bửu, Quận Hai Bà Trưng, Hà Nội', '2019-12-16', '2022-10-10', NULL)
GO

-- 8. Tạm vắng
CREATE TABLE tam_vang(
	id INT CONSTRAINT PK_tam_vang PRIMARY KEY IDENTITY(1, 1),
	idNhanKhau INT CONSTRAINT FK_tam_vang_nhan_khau FOREIGN KEY REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	noiTamTru NVARCHAR(255) NOT NULL,
	tuNgay DATE NOT NULL,
	denNgay DATE NOT NULL,
	lyDo NVARCHAR(255)
)
GO

INSERT INTO tam_vang(idNhanKhau, noiTamTru, tuNgay, denNgay, lyDo) VALUES
(4, N'Số 8 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-11-11', '2022-12-12', NULL),
(9, N'Số 7 Đại Cồ Việt, Quận Hai Bà Trưng, Hà Nội', '2020-11-10', '2022-12-11', NULL)
GO

-- 9. Dịp đặc biệt
CREATE TABLE dip_dac_biet(
	idDip INT CONSTRAINT PK_dip_dac_biet PRIMARY KEY IDENTITY(1, 1),
	ten NVARCHAR(255) NOT NULL,
	nam INT NOT NULL,
	moTa NVARCHAR(255),
	phanQua05 NVARCHAR(255) NOT NULL,
	phanQua614 NVARCHAR(255) NOT NULL,
	phanQua1517 NVARCHAR(255) NOT NULL,
	tien05 FLOAT NOT NULL,
	tien614 FLOAT NOT NULL,
	tien1517 FLOAT NOT NULL
)
GO

INSERT INTO dip_dac_biet(ten, nam, moTa, phanQua05, phanQua614, phanQua1517, tien05, tien614, tien1517) VALUES
(N'Tết Trung Thu', 2020, NULL, N'1 mũ len', N'1 khăn len', N'1 đôi tất', 20000, 23000, 15000),
(N'Giáng Sinh', 2020, NULL, N'1 gấu bông', N'5 cây kẹo mút', N'1 bao tay', 30000, 20000, 25000)
GO

-- 10. Dịp học sinh giỏi
CREATE TABLE dip_hoc_sinh_gioi(
	idDip INT CONSTRAINT PK_dip_hoc_sinh_gioi PRIMARY KEY IDENTITY(1, 1),
	nam INT NOT NULL,
	moTa NVARCHAR(255),
	phanQuaDacBiet NVARCHAR(255) NOT NULL,
	phanQuaGioi NVARCHAR(255) NOT NULL,
	phanQuaKha NVARCHAR(255) NOT NULL,
	tienDacBiet FLOAT NOT NULL,
	tienGioi FLOAT NOT NULL,
	tienKha FLOAT NOT NULL
)
GO

INSERT INTO dip_hoc_sinh_gioi(nam, moTa, phanQuaDacBiet, phanQuaGioi, phanQuaKha, tienDacBiet, tienGioi, tienKha) VALUES
(2020, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000),
(2021, NULL, N'10 quyển vở', N'7 quyển vở', N'5 quyển vở', 50000, 35000, 25000)
GO

-- 11. Chi tiết dịp đặc biệt
CREATE TABLE chi_tiet_dip_dac_biet(
	idDip INT CONSTRAINT FK_chi_tiet_dip_dac_biet_dip_dac_biet FOREIGN KEY REFERENCES dip_dac_biet(idDip) NOT NULL,
	idNhanKhau INT CONSTRAINT FK_chi_tiet_dip_dac_biet FOREIGN KEY REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	nhom INT NOT NULL, 
	kiemtra INT NOT NULL,
	CONSTRAINT PK_chi_tiet_dip_dac_biet PRIMARY KEY(idDip, idNhanKhau)
)
GO

INSERT INTO chi_tiet_dip_dac_biet(idDip, idNhanKhau, nhom, kiemtra) VALUES
(1, 9, 2, 1),
(1, 10, 2, 1),
(2, 9, 2, 1),
(2, 10, 2, 0)
GO

-- 12. Chi tiết dịp học sinh giỏi
CREATE TABLE chi_tiet_dip_hoc_sinh_gioi(
	idDip INT CONSTRAINT FK_chi_tiet_dip_hoc_sinh_gioi_dip_hoc_sinh_gioi FOREIGN KEY REFERENCES dip_hoc_sinh_gioi(idDip) NOT NULL,
	idNhanKhau INT CONSTRAINT FK_chi_tiet_dip_hoc_sinh_gioi FOREIGN KEY REFERENCES nhan_khau(idNhanKhau) NOT NULL,
	truong NVARCHAR(255) NOT NULL,
	lop INT NOT NULL, 
	nhom INT NOT NULL, 
	minhChung NVARCHAR(255) NOT NULL,
	kiemtra INT NOT NULL,
	CONSTRAINT PK_chi_tiet_dip_hoc_sinh_gioi PRIMARY KEY(idDip, idNhanKhau)
)
GO

INSERT INTO chi_tiet_dip_hoc_sinh_gioi(idDip, idNhanKhau, truong, lop, nhom, minhChung, kiemtra) VALUES
(1, 1, N'Trường THCS Chu Văn An', 6, 1, '', 1),
(1, 2, N'Trường tiểu học Chu Văn An', 2, 1, '', 1),
(2, 1, N'Trường THCS Chu Văn An', 7, 2, '', 1),
(2, 2, N'Trường tiểu học Chu Văn An', 2, 1, '', 1)
GO