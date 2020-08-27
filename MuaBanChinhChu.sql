create database BatDongSan
use BatDongSan

create table ThanhPho
(
	ID_TP int identity(1,1) primary key,
	Name_TP nvarchar(50) not null,
)

create table Quan
(
	ID_Q int identity(1,1) primary key,
	Name_Q nvarchar(50) not null,
	ID_TP int,
	constraint fk_tinh_tp foreign key(ID_TP) references ThanhPho(ID_TP)
)

create table Phuong
(
	ID_P int identity(1,1) primary key,
	Name_P nvarchar(50) not null,
	ID_Q int,
	constraint fk_Quan_huyen foreign key(ID_Q) references Quan(ID_Q)
)


insert into ThanhPho values
('Ho Chi Minh'),
('Ha Noi'),
('Hai Phong'),
('Da Nang')

insert into Quan values
('Quan 1',1),
('Quan 2',1),
('Quan 3',1),
('Quan 4',1),
('Quan Hoan Kiem',2),
('Quan Ba Dinh',2),
('Quan Hai Ba Trung',2),
('Quan Bac Tu Niem',2),
('Quan 1',3),
('Quan 2',3),
('Quan 1',4),
('Quan 3',4)

insert into Phuong values
('Phuong 1',1),
('Phuong 2',1),
('Phuong 1',5),
('Phuong 2',5),
('Phuong 3',6),
('Phuong 1',9),
('Phuong 2',10),
('Phuong 1',11),
('Phuong 2',12),
('Phuong 3',12)


select * from ThanhPho
select * from Quan
select * from Phuong


create table LoaiTin
(
	ID_LT int identity(1,1) primary key,
	Name_LT nvarchar(50) not null
)

create table MucTin
(
	ID_MT int identity(1,1) primary key,
	Name_MT nvarchar(50) not null,
	ID_LT int,
	constraint fk_loaiTinDang foreign key(ID_LT) references LoaiTin(ID_LT)
)

insert into LoaiTin values
('Can Ban'),
('Cho Thue')

insert into MucTin values
('Can Ho',1),
('Dat',1),
('Nha',1),
('Can Ho,Chung Cu',2),
('Dat,Kho Xuong',2),
('Nha O',2),
('Phong Tro',2)


create table BatDongSan
(
	ID_BDS int identity(1,1) primary key,
	Gia money not null,
	DienTich float,
	RongDuong float,
	MoTaChiTiet nvarchar(max),
	ID_P int,
	constraint fk_IDphuongxa foreign key(ID_P) references Phuong(ID_P)
)

create table TinDang
(
	ID_TD int identity(1,1) primary key,
	Title nvarchar(max),
	ID_BDS int,
	ID_MT int,
	NgayDang date,
	constraint fk_IDBDS foreign key(ID_BDS) references BatDongSan(ID_BDS),
	constraint fk_IDMucDangTin foreign key(ID_MT) references MucTin(ID_MT)
)
insert into BatDongSan values
(20,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',1),
(19,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',3),
(18,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',7),
(200,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',2),
(34,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',9),
(17,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',4),
(28,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',8),
(3,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',2),
(9,70,2,'Cần bán nhà phố mặt tiền đường NE8 Mỹ Phước 3, đường cổng chính của khu đô thị và công nghiệp Mỹ Phước 3.

Đường nhựa, đường rộng 36,5 mét, dài thẳng tắp, có đèn đường, điện, cáp internet có đủ hết. Nhà nằm giữa khu vực dân cư đã đông đúc, cách cợ 200m, bệnh viện 5km, trường học 1km, ngân hàng + ATM ngay bên cạnh.

Nhà trên diện tích đất 150m2, kích thước ngang 5m sâu 30m, kích thước xây dựng nhà 5×20, nhà 4 lầu.

Sổ hồng, sang tên được ngay.',1)



insert into TinDang values
('Bán Nhà Mặt Tiền Thạch Lam, P.phú Thạnh, Q.tân Phú 6X23 Giá 12 Tỷ ( tiêu đề)',1,1,'2019-11-13'),
('Bán nhà phố mặt tiền đường NE8 Mỹ Phước 3 Bình Dương, giá 3,2 tỷ',2,2,'2019-11-13'),
('Bán Nhà Mặt Tiền Thạch Lam, P.phú Thạnh, Q.tân Phú 6X23 Giá 12 Tỷ ( tiêu đề)',3,3,'2019-11-13'),
('Bán nhà phố mặt tiền đường NE8 Mỹ Phước 3 Bình Dương, giá 3,2 tỷ',4,4,'2019-11-13'),
('Bán Nhà Mặt Tiền Thạch Lam, P.phú Thạnh, Q.tân Phú 6X23 Giá 12 Tỷ ( tiêu đề)',5,5,'2019-11-13'),
('Bán nhà phố mặt tiền đường NE8 Mỹ Phước 3 Bình Dương, giá 3,2 tỷ',7,6,'2019-11-13')

select * from ThanhPho
select * from Quan where ID_tp=1

select * from TinDang join BatDongSan on BatDongSan.ID_BDS=TinDang.ID_BDS join Phuong on Phuong.ID_P=BatDongSan.ID_P join Quan on Quan.ID_Q=Phuong.ID_Q join ThanhPho on ThanhPho.ID_TP=Quan.ID_TP where ThanhPho.ID_TP=2


select * from BatDongSan

select * from TinDang