Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

select * from dmkhoa;
select * from dmmh;
select * from dmsv;
select * from ketqua;
-- cau 1: 
select MaSV, HoSV , TenSV, HocBong 
from dmsv
order by MaSv ASC;
-- cau 2:
select MaSV, HoSV, TenSV,Phai, NgaySinh 
from dmsv
order by Phai DESC;
-- cau 3:
select HoSV, TenSV, NgaySinh , HocBong
from dmsv
order by NgaySinh ASC , HocBong DESC;
-- cau 4:
select MaMH, TenMH, SoTiet 
from dmmh 
where TenMH like 'T%';
-- cau 5:
select  HoSV, TenSV,Phai, NgaySinh 
from dmsv
WHERE TenSV LIKE '%I';
-- cau 6:
select MaKhoa,TenKhoa 
from dmkhoa
where TenKhoa like '_N%';
-- cau 7:
select * from dmsv where hoSV like '%Thị%'; 
-- cau 8:
select MaSV, HoSV , TenSV, MaKhoa, HocBong
from dmsv 
where HocBong > 100000 
order by MaKhoa DESC;
-- cau 9:
select  HoSV , TenSV, MaKhoa, NoiSinh ,HocBong
from dmsv 
where NoiSinh = 'Hà Nội' and HocBong >= 150000;
-- cau 10:
select MaSV, MaKhoa,Phai
from dmsv
where MaKhoa in ('AV','VL');
-- cau 11:
select MaSV, NgaySinh, NoiSinh, HocBong
from dmsv
where NgaySinh between '1991-01-01' and '1992-06-05';
-- cau 12:
select MaSV, NgaySinh,Phai,MaKhoa 
from dmsv
where HocBong between 80000 and 150000;
-- cau 13:
select MaMH,TenMH, SoTiet 
from dmmh
where SoTiet between 30 and 45;
-- cau 14:
select dmsv.MaSV, dmsv.HoSV,dmsv.TenSV,dmkhoa.TenKhoa,dmsv.Phai
from dmsv
join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
where dmsv.Phai ='Nam' and dmkhoa.TenKhoa in ('Anh Văn','Tin Học');
-- cau 15 :
select * from dmsv where TenSV like '%N%' and Phai = 'Nữ';
-- cau 16:
select HoSV, TenSV, NoiSinh, NgaySinh
from dmsv
where NoiSinh = 'Hà Nội' and month(NgaySinh) = 2;
-- cau 17:
select HoSV, TenSV, year(curdate()) - year(NgaySinh) as Tuoi, HocBong
from dmsv
where year(curdate()) - year(NgaySinh) > 20;
-- cau 18:
select HoSV , TenSV,year(curdate()) - year(NgaySinh) as Tuoi, dmkhoa.TenKhoa
from dmsv	
join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
where year(curdate()) - year(NgaySinh) between 20 and 25;
-- cau 19:
select HoSV, TenSV, Phai, NgaySinh 
from dmsv
where year(NgaySinh) = 1990 and month(NgaySinh) between 1 and 3;
-- cau 20:
select MaSV,Phai,MaKhoa,
	case 
		when HocBong > 500000 then 'Học bổng cao'
        else 'Mức trung bình'
	end as 'Mức học bổng'
from dmsv;
-- cau 21:
select count(*) as TongSoSinhVien
from dmsv;
-- cau 22:
select count(*) as TongSoSinhVien,
	sum(case when Phai = 'Nữ' then 1 else 0 end ) as TongSoSinhVienNu
from dmsv;
-- cau 23:
select dmkhoa.TenKhoa , count(dmsv.MaSV) as TongSoSinhVien
from dmsv
join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
group by dmkhoa.MaKhoa;
-- cau 24:
select dmmh.TenMH , count(ketqua.MaSV) as SoLuongSinhVien
from ketqua
join dmmh on ketqua.MaMH = dmmh.MaMH
group by dmmh.TenMH;
-- cau 25:
select MaSV, count(distinct MaMH) as SoMonHoc
from ketqua
group by MaSV;
-- cau 26:
select dmkhoa.TenKhoa, sum(dmsv.HocBong) as TongHocBong
from dmsv
inner join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
group by dmkhoa.TenKhoa;
-- cau 27:
select dmkhoa.TenKhoa, max(dmsv.HocBong) as HocBongCaoNhat
from dmsv
inner join ketqua on dmsv.MaSV = ketqua.MaSV
inner join  dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
group by dmkhoa.TenKhoa;
-- cau 28:
select dmkhoa.TenKhoa,
	SUM(case when dmsv.phai = 'Nam' then 1 else 0 end) as TongSoSinhVienNam,
    SUM(case when dmsv.phai = 'Nữ' then 1 else 0 end) as TongSoSinhVienNu
from dmsv
inner join dmkhoa on dmsv.MaKhoa = dmKhoa.MaKhoa
group by dmkhoa.TenKhoa;
-- cau 29 :
select year(current_date()) - year(NgaySinh) as DoTuoi, 
       COUNT(*) as SoLuongSinhVien
from dmsv
group by DoTuoi;
-- cau 30:
select year(NgaySinh) as NamSinh, count(*) as SoLuongSinhVien
from dmsv
group by year(NgaySinh)
having count(*) >= 2;
-- cau 31:
select NoiSinh,count(*) as SoLuongSinhVien
from dmsv
group by NoiSinh
having count(*) > 2;
-- cau 32:
select dmmh.TenMH , count(kq.MaSV) as SoLuongSinhVien
from ketqua kq
inner join dmmh on kq.MaMH = dmmh.MaMH
group by dmmh.TenMH
having count(kq.MaMH) > 3;
-- cau 33:
select sv.MaSV, sv.TenSV
from dmsv sv
inner join ketqua kq on sv.MaSV = kq.MaSV
group by sv.MaSV
having count(case when kq.LanThi > 1 then 1 end) > 2;
-- cau 34:
select sv.MaSV, sv.TenSV
from dmsv sv
inner join ketqua kq on sv.MaSV = kq.MaSV
where phai = 'Nam' and kq.LanThi = 1 and kq.Diem >=7;
-- cau 35:
select sv.MaSV, sv.TenSV 
from dmsv sv
inner join ketqua kq on sv.MaSV = kq.MaSV
where kq.LanThi = 1 and kq.Diem < 5
group by sv.MaSV
having count(*) > 2;
-- cau 36:
select k.TenKhoa , count(*) as SoLuongSinhVien
from dmsv sv
inner join dmkhoa k on sv.MaKhoa = k.MaKhoa
where sv.Phai = 'Nam'
group by k.TenKhoa 
having count(*) > 2;
-- cau 37:
SELECT MaKhoa, COUNT(*) AS SoLuongSinhVien
FROM dmsv
WHERE HocBong BETWEEN 200000 AND 300000
GROUP BY MaKhoa
HAVING COUNT(*) = 2;
-- cau 38:
SELECT mh.TenMH,
       SUM(CASE WHEN kq.Diem > 5 THEN 1 ELSE 0 END) AS SoLuongDau,
       SUM(CASE WHEN kq.Diem < 5 THEN 1 ELSE 0 END) AS SoLuongRot
FROM KetQua kq
INNER JOIN dmmh mh ON kq.MaMH = mh.MaMH
WHERE kq.LanThi = 1
GROUP BY mh.TenMH;
-- cau 39 :
SELECT MaSV, HoSV, TenSV, HocBong
FROM dmsv
ORDER BY HocBong DESC
LIMIT 1;
-- cau 40:
SELECT sv.MaSV, sv.HoSV, sv.TenSV, kq.Diem
FROM dmsv sv
INNER JOIN KetQua kq ON sv.MaSV = kq.MaSV
WHERE kq.MaMH = '01' AND kq.LanThi = 1
ORDER BY kq.Diem DESC
LIMIT 1;
-- cau 41:
SELECT MaSV, HoSV, TenSV, NgaySinh
FROM dmsv
WHERE MaKhoa = 'AV'
ORDER BY NgaySinh ASC
LIMIT 1;
-- cau 42:
SELECT MaKhoa, COUNT(*) AS SoLuongSinhVien
FROM dmsv
GROUP BY MaKhoa
ORDER BY SoLuongSinhVien DESC
LIMIT 1;
-- cau 43:
select MaKhoa,count(*) as SoLuongSinhVienNu
from dmsv
where Phai = 'Nữ'
group by MaKhoa
order by SoLuongSinhVienNu desc
limit 1;
-- cau 44:
select dmmh.TenMH ,count(*) as SoLuongSVRot
from dmmh
inner join ketqua kq on kq.MaMH = dmmh.MaMH
where LanThi = 1 and Diem < 5
group by TenMH
having count(*) > 0
order by SoLuongSVRot  desc
limit 1;
-- cau 46:
select MaSV,HoSV,TenSV 
from dmsv
where NoiSinh = (select NoiSinh from dmsv where TenSV = 'Hải');
-- cau 47+48:
select MaSV ,HoSV,TenSV , HocBong
from dmsv 
where HocBong > (select MAX(HocBong) from dmsv where MaKhoa = 'AV');
-- cau 49 :
select sv.MaSV,sv.TenSV 
from dmsv sv
inner join ketqua kq on sv.MaSV = kq.MaSV
where kq.MaMH ='01' and kq.LanThi = 2 and kq.Diem > (
	select MAX(kq2.Diem)
    from ketqua kq2
    where kq2.MaMH = '01' and kq2.LanThi = 1
);
-- cau 50:
SELECT sv.MaSV, sv.HoSV,sv.TenSV, mh.TenMH, MAX(kq.Diem) AS DiemCaoNhat
FROM dmsv sv
INNER JOIN ketqua kq ON sv.MaSV = kq.MaSV
INNER JOIN dmmh mh ON kq.MaMH = mh.MaMH
GROUP BY mh.TenMH, sv.MaSV;
-- cau 51:
SELECT k.TenKhoa
FROM dmkhoa k
LEFT JOIN dmsv sv ON k.MaKhoa = sv.MaKhoa
WHERE sv.MaSV IS NULL;
-- cau 52:
select sv.MaSV ,sv.HoSV,sv.TenSV
from dmsv sv
where not exists (
	select 1
    from ketqua kq 
    where sv.MaSV = kq.MaSV and kq.MaMH = '01'
);
-- cau 53:
select sv.MaSV, sv.HoSV,sv.TenSV
from dmsv sv
inner join ketqua kq on sv.MaSV = kq.MaSV
where kq.LanThi = 2
and not exists (
	select 1
    from ketqua kq2
    where sv.MaSV =kq2.MaSV and kq2.MaMH = kq.MaMH and kq.LanThi = 1
);
-- cau 54:
select mh.TenMH
from dmmh mh
where not exists (
	select 1
    from ketqua kq
    inner join dmsv sv on kq.MaSV = sv.MaSV
    where kq.MaMH = mh.MaMH and sv.MaKhoa = 'AV'
);
-- cau 55:
-- cau 56:
SELECT sv.MaSV, sv.HoSV,sv.TenSV
FROM dmsv sv
WHERE NOT EXISTS (
    SELECT 1
    FROM ketqua kq
    WHERE sv.MaSV = kq.MaSV AND kq.Diem < 5
);
-- cau 57:
SELECT sv.MaSV, sv.HoSV,sv.TenSV
FROM dmsv sv
WHERE sv.MaKhoa = 'AV' AND sv.HocBong > 0
AND NOT EXISTS (
    SELECT 1
    FROM ketqua kq
    WHERE sv.MaSV = kq.MaSV AND kq.Diem < 5
);
-- cau 58:
-- cau 59:
-- cau 60:
SELECT mh.TenMH
FROM dmmh mh
WHERE NOT EXISTS (
    SELECT 1
    FROM dmsv sv
    WHERE NOT EXISTS (
        SELECT 1
        FROM ketqua kq
        WHERE sv.MaSV = kq.MaSV AND kq.MaMH = mh.MaMH
    )
);
-- cau 61:
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM dmsv sv
INNER JOIN ketqua kq ON sv.MaSV = kq.MaSV
WHERE EXISTS (
    SELECT 1
    FROM ketqua kq2
    WHERE kq2.MaSV = 'A02' AND kq.MaMH = kq2.MaMH
)
GROUP BY sv.MaSV
HAVING COUNT(*) = (
    SELECT COUNT(*)
    FROM ketqua
    WHERE MaSV = 'A02'
);
-- cau 62:
SELECT sv.MaSV, sv.HoSV, sv.TenSV
FROM dmsv sv
WHERE NOT EXISTS (
    SELECT kq2.MaMH
    FROM ketqua kq2
    WHERE kq2.MaSV = 'A02'
    AND NOT EXISTS (
        SELECT 1
        FROM ketqua kq
        WHERE kq.MaSV = sv.MaSV AND kq.MaMH = kq2.MaMH
    )
)
AND NOT EXISTS (
    SELECT kq.MaMH
    FROM ketqua kq
    WHERE kq.MaSV = sv.MaSV
    AND NOT EXISTS (
        SELECT 1
        FROM ketqua kq2
        WHERE kq2.MaSV = 'A02' AND kq.MaMH = kq2.MaMH
    )
);


