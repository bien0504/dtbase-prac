/*BAI THUC HANH SO 3 TUAN 13
NGUYEN CONG BIEN --0101-2023.1-865
a. Xử lý chuỗi, ngày giờ
1. Cho biết NGAYTD, TENCLB1, TENCLB2, KETQUA các trận đấu diễn ra vào tháng 3 trên sân 
nhà mà không bị thủng lưới.*/
use QLBONGDA_BIENNC_865
select NGAYTD_0101,MACLB1_0101,MACLB2_0101,KETQUA_0101
from TRANDAU_BIENNC td join CAULACBO_BIENNC clb--chọn từ bảng clb và trận đấu
on td.MASAN_0101=clb.MASAN_0101
where (td.MACLB1_0101=clb.MACLB_0101 and KETQUA_0101 like '%-0'--các clb không bị thủng lưới
or td.MACLB2_0101 =clb.MACLB_0101 and KETQUA_0101 like '0-%')
and month(NGAYTD_0101)=3 --có ngày thi đấu vào tháng 3
--2. Cho biết mã số, họ tên, ngày sinh của những cầu thủ có họ lót là “Công"
select * from CAUTHU_BIENNC--chọn từ bảng cầu thủ
where HOTEN_0101 like N'% Công %'--các cầu thủ có họ lót "Công "
--3. Cho biết mã số, họ tên, ngày sinh của những cầu thủ có họ không phải là họ “Nguyễn “
use QLBONGDA_BIENNC_865
select * from CAUTHU_BIENNC--chọn từ bảng cầu thủ
where HOTEN_0101 not like N'Nguyễn %'--các cầu thủ có họ không phải "Nguyễn"
--4. Cho biết mã huấn luyện viên, họ tên, ngày sinh, đ ịa chỉ của những huấn luyện viên Việt Nam có tuổi nằm trong khoảng 35-40
select * from HUANLUYENVIEN_BIENNC
where MAQG_0101='VN'
and 2023-year(NGAYSINH_0101) between 35 and 50
--5. Cho biết tên câu lạc bộ có huấn luyện viên trưởng sinh vào ngày 20 tháng 5
select TENCLB_0101--chọn tên clb
from CAULACBO_BIENNC --từ bảng câu lạc bộ
where MACLB_0101 in --có mã câu lạc bộ có điều kiện
(select MACLB_0101 from HUANLUYENVIEN_BIENNC hlv join HLV_CLB_BIENNC hlvclb 
on hlv.MAHLV_0101 = hlvclb.MAHLV_0101
where VAITRO_0101=N'HLV Chính'--là hlv chính
and NGAYSINH_0101 like '%05-20%')--sinh ngày 20 tháng 5
--6. Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng có số bàn thắng nhiều nhất tính đến hết vòng 3 năm 2009
select clb.TENCLB_0101,tinh.TENTINH_0101 --chọn tên câu lạc bộ và tên tỉnh
from CAULACBO_BIENNC clb join TINH_BIENNC tinh 
on clb.MATINH_0101=tinh.MATINH_0101
and MACLB_0101 in
(select top 1 MACLB_0101
from BANGXH_BIENNC bxh 
where VONG_0101 =3
order by DIEM_0101 desc)
--b. Truy vấn con
/*1. Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ nước 
ngoài (Có quốc tịch khác “Việt Nam”) tương ứng của các câu lạc bộ có nhiều hơn 2 cầu 
thủ nước ngoài.*/
select distinct clb.MACLB_0101,TENCLB_0101,TENSAN_0101,svd.DIACHI_0101--chọn các thuộc tính
from CAULACBO_BIENNC clb join CAUTHU_BIENNC ct --từ 3 bảng 
on clb.MACLB_0101=ct.MACLB_0101
join SANVD_BIENNC svd 
on clb.MASAN_0101=svd.MASAN_0101
where clb.MACLB_0101 in--của câu lạc bộ có mã
(select MACLB_0101
from CAUTHU_BIENNC 
where MAQG_0101 not like 'VN'--cầu thủ có quốc tịch không phải VN
group by MACLB_0101
having count(MACLB_0101)>=2)--clb nhiều hơn 2 cầu thủ 
--2. Cho biết tên câu lạc bộ, tên tỉnh mà CLB đang đóng có hiệu số bàn thắng bại cao nhất năm 2009.
select clb.TENCLB_0101,tinh.TENTINH_0101
from CAULACBO_BienNC clb join TINH_BienNC tinh on clb.MATINH_0101=tinh.MATINH_0101
where clb.MACLB_0101=
(select top 1 MACLB_0101 from BANGXH_BienNC bxh where bxh.NAM_0101=2009
group by MACLB_0101
order by sum(convert(int,substring(hieuso_0101,1,1))-convert(int,substring(hieuso_0101,3,1))) desc)
--3. Cho biết danh sách các trận đấu ( NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) của 
--câu lạc bộ CLB có thứ hạng thấp nhất trong bảng xếp hạng vòng 3 năm 2009.
select NGAYTD_0101,TENSAN_0101,MACLB1_0101,MACLB2_0101,KETQUA_0101--chọn các thuộc tính
from TRANDAU_BIENNC td join SANVD_BIENNC svd --từ 2 bảng 
on td.MASAN_0101=svd.MASAN_0101
where MACLB1_0101 in
(select top 1 MACLB_0101 --chọn ra câu lạc bộ điểm thấp nhất 
from BANGXH_BIENNC bxh 
where VONG_0101=3--ở vòng 3
order by DIEM_0101 desc)
--4. Cho biết mã câu lạc bộ, tên câu lạc bộ đã tham gia thi đấu với tất cả các câu lạc bộ còn lại 
--(kể cả sân nhà và sân khách) trong mùa giải năm 2009.
select clb.MACLB_0101,clb.TENCLB_0101
from CAULACBO_BienNC clb
join TRANDAU_BienNC td on clb.MACLB_0101=td.MACLB1_0101
where not exists
(
select maclb_0101 from CAULACBO_BienNC clb1
where clb1.MACLB_0101<> clb.maclb_0101
except ((select MACLB2_0101 from TRANDAU_BienNC td where clb.MACLB_0101=td.MACLB1_0101 and td.NAM_0101=2009)
union (select MACLB1_0101 from TRANDAU_BienNC td where clb.MACLB_0101=td.MACLB2_0101 and td.NAM_0101=2009))
) and td.NAM_0101=2009);
--5. Cho biết mã câu lạc bộ, tên câu lạc bộ đã tham gia thi đấu với tất cả các câu lạc bộ còn lại 
--( chỉ tính sân nhà) tro ng mùa giải năm 2009.
select clb.MACLB_0101,clb.TENCLB_0101
from CAULACBO_BienNC clb
join TRANDAU_BienNC td on clb.MACLB_0101=td.MACLB1_0101
where not exists
(
select MACLB_0101 from CAULACBO_BienNC clb1
where clb1.MACLB_0101 <> clb.MACLB_0101
except ((select MACLB2_0101 from TRANDAU_BienNC td where clb.MACLB_0101=td.MACLB1_0101 and td.NAM_0101=2009)
union(select MACLB1_0101 from TRANDAU_BienNC td where clb.MACLB_0101=td.MACLB2_0101 and td.NAM_0101=2009))
)
and td.NAM_0101=2009

--c. Bài tập về Rule
--1. Khi thêm cầu thủ mới, kiểm tra vị trí trên sân của cầu thủ chỉ thuộc một trong các vị trí 
--sau: Thủ môn, tiền đạo, tiền vệ, trung vệ, hậu vệ.
alter table CAUTHU_BienNC drop constraint CHK_VITRI_0101
alter table CAUTHU_BienNC
add constraint CHK_VITRI_0101
CHECK(VITRI_0101 in (N'Thủ môn',N'Tiền đạo',N'Tiền vệ',N'Trung vệ',N'Hậu vệ'));
--2. Khi phân công huấn luyện viên, kiểm tra vai trò của huấn luyện vi ên chỉ thuộc một trong 
--các vai trò sau: HLV chính, HLV phụ, HLV thể lực, HLV thủ môn.
alter table HLV_CLB_BienNC  drop constraint CHK_VAITRO_0101
alter table HLV_CLB_BienNC
add constraint CHK_VAITRO_0101
CHECK(VAITRO_0101 in (N'HLV Chính',N'HLV Phụ',N'HLV Thể lực',N'HLV Thủ môn'));
--3. Khi thêm cầu thủ mới, kiểm tra cầu thủ đó có tuổi phải đủ 18 trở lên (chỉ tính năm sinh)
alter table CAUTHU_BienNC DROP CONSTRAINT CHK_TUOI_0101
ALTER TABLE CAUTHU_BienNC
ADD CONSTRAINT CHK_TUOI_0101
CHECK (YEAR(GETDATE())-YEAR(NGAYSINH_0101)>=18);
--4. Kiểm tra kết quả trận đấu có dạng số_bàn_thắng- số_bàn_thua
alter table TRANDAU_BienNC DROP CONSTRAINT CHK_KETQUA_0101
ALTER TABLE TRANDAU_BienNC
ADD CONSTRAINT CHK_KETQUA_0101 CHECK(KETQUA_0101 LIKE '%-%');
--d) Bài tập về View
--1. Cho biết mã số, họ tên, ngày sinh, địa chỉ và vị trí của các cầu thủ thuộc đội bón g “SHB 
--Đà Nẵng” có quốc tịch “Bra-xin”
CREATE VIEW v1
as
select ct.*
from CAUTHU_BienNC ct ,CAULACBO_BienNC clb,QUOCGIA_BienNC qg
where ct.MACLB_0101=clb.MACLB_0101 and ct.MAQG_0101=qg.MAQG_0101
and clb.TENCLB_0101=N'SHB Đà Nẵng' AND qg.TENQG_0101=N'Bra-xin';
go
select * from v1;
--2. Cho biết kết quả (MATRAN, NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) các trận 
--đấu vòng 3 của mùa bóng năm 2009.
drop view v2;
go
create view v2
as
select td.MATRAN_0101,td.NGAYTD_0101,svd.TENSAN_0101,clb1.TENCLB_0101,clb2.TENCLB_0101,td.KETQUA_0101
from TRANDAU_BienNC td,CAULACBO_BienNC clb1 ,CAULACBO_BienNC clb2,SANVD_BienNC svd
where td.MACLB1_0101=clb1.MACLB_0101 and td.MACLB2_0101=clb2.MACLB_0101
and td.MASAN_0101=svd.MASAN_0101
go
select * from v2;
--3. Cho biết mã huấn luyện viên, họ tên, ngày sinh, địa chỉ, vai trò và tên CLB đang làm việc 
--của các huấn luyện viên có quốc tịch “Việt Nam”
drop view v3
go
CREATE VIEW v3
AS
select hlv.MAHLV_0101,hlv.TENHLV_0101,hlv.NGAYSINH_0101,hlv.DIACHI_0101,hlvclb.VAITRO_0101,clb.TENCLB_0101
from CAULACBO_BienNC clb,HUANLUYENVIEN_BienNC hlv,HLV_CLB_BienNC hlvclb
where hlv.MAHLV_0101=hlvclb.MAHLV_0101 and clb.MACLB_0101=hlvclb.MACLB_0101
and hlv.MAQG_0101='VN';
go
select * from v3;
--4. Cho biết mã câu lạc bộ, tên câu lạc bộ, tên sân vận động, địa chỉ và số lượng cầu thủ
--nước ngoài (có quốc tịch khác “Việt Nam”) tương ứng của các câu lạc bộ nhiều hơn 2 
--cầu thủ nước ngoài
drop view v4
go
CREATE VIEW v4
AS
select clb.MACLB_0101,clb.TENCLB_0101,svd.TENSAN_0101,svd.DIACHI_0101,count(MACT_0101)
from CAULACBO_BienNC clb,SANVD_BienNC svd,CAUTHU_BienNC ct
where clb.MACLB_0101=ct.MACLB_0101 and clb.MASAN_0101=svd.MASAN_0101
and ct.MAQG_0101='VN'
group by clb.MACLB_0101,clb.TENCLB_0101,svd.TENSAN_0101,svd.DIACHI_0101;
go
select * from v4;
--5. Cho biết tên tỉnh, số lượng câu thủ đang thi đấu ở vị trí tiền đạo trong các câu lạc bộ
--thuộc địa bàn tỉnh đó quản lý.
drop view v5
go
create view v5
as
select tinh.TENTINH_0101,count(MACT_0101) 
from TINH_BienNC tinh join CAULACBO_BienNC clb on tinh.MATINH_0101=clb.MATINH_0101
left join CAUTHU_BienNC ct on ct.MACLB_0101=clb.MACLB_0101
and ct.VITRI_0101=N'Tiền đạo'
group by tinh.TENTINH_0101
go
select * from v5
--6. Cho biết tên câu lạc bộ,tên tỉnh mà CLB đang đóng nằm ở vị trí cao nhất của bảng xếp 
--hạng của vòng 3 năm 2009
drop view v6
go
create view v6
as
select top 1 clb.TENCLB_0101,tinh.TENTINH_0101
from CAULACBO_BienNC clb,TINH_BienNC tinh,BANGXH_BienNC bxh
where tinh.MATINH_0101=clb.MATINH_0101 and clb.MACLB_0101=bxh.MACLB_0101
and bxh.VONG_0101=3 and bxh.NAM_0101=2009 and bxh.HANG_0101=1;
go
select * from v6
--7. Cho biết tên huấn luyện viên đang nắm giữ một vị trí trong 1 c âu lạc bộ mà chưa có số
--điện thoại
drop view v7
go
create view v7
as
select tinh.TENTINH_0101,count(MACT_0101) 
from HUANLUYENVIEN_BienNC hlv ,HLV_CLB_BienNC hlvclb
where hlv.MAHLV_0101=hlvclb.MACLB_0101
and hlvclb.VAITRO_0101 is not null
and hlv.DIENTHOAI_0101 is null;
go
select * from v7
--8. Liệt kê các huấn luyện viên thuộc quốc gia Việt Nam chưa làm công tác huấn luyện tại bất 
--kỳ một câu lạc b ộ nào
drop view v8
go
create view v8
as
select hlv.*
from HUANLUYENVIEN_BienNC hlv,HLV_CLB_BienNC hlvclb
where hlv.MAHLV_0101=hlvclb.MAHLV_0101
and hlv.MAQG_0101 like 'VN'
and hlvclb.MACLB_0101 is null;
go
select * from v8
--9.	Cho biết kết quả các trận đấu đã diễn ra (MACLB1, MACLB2, NAM, VONG, SOBANTHANG, SOBANTHUA)
drop view v9
go
create view v9
as
select *
from TRANDAU_BienNC
go
select * from v9
--10.	Cho biết kết quả các trận đấu trên sân nhà (MACLB, NAM, VONG, SOBANTHANG, SOBANTHUA)
drop view v10
go
create view v10
as
select td.NGAYTD_0101,svd.TENSAN_0101,clb1.TENCLB_0101,clb2.TENCLB_0101,td.KETQUA_0101
from TRANDAU_BienNC td,CAULACBO_BienNC clb1,CAULACBO_BienNC clb2,SANVD_BienNC svd
where td.MASAN_0101=svd.MASAN_0101
and td.MACLB1_0101=clb1.MACLB_0101 and td.MACLB2_0101=clb2.MACLB_0101
and
(td.MACLB1_0101=
(select top 1 MACLB_0101 from BANGXH_BienNC where NAM_0101=2009 and VONG_0101=3 order by HANG_0101)
or
td.MACLB2_0101=
(select top 1 MACLB_0101 from BANGXH_BienNC where NAM_0101=2009 and VONG_0101=3 order by HANG_0101));
go
select * from v10
--11.	Cho biết kết quả các trận đấu trên sân khách (MACLB, NAM, VONG, SOBANTHANG, SOBANTHUA)
drop view v11
go
create view v11
as
select MACLB2_0101,NAM_0101,VONG_0101,CONVERT(INT,SUBSTRING(KETQUA_0101,1,CHARINDEX('-',KETQUA_0101)-1)),
CONVERT(INT,SUBSTRING(KETQUA_0101,CHARINDEX('-',KETQUA_0101,1)+1,len(ketqua_0101)))

from TRANDAU_BienNC 
go
select * from v11
--12.	Cho biết danh sách các trận đấu (NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) của câu lạc bộ CLB đang xếp hạng cao nhất tính đến hết vòng 3 năm 2009
drop view v12
go
create view v12
as
SELECT *
FROM TRANDAU_BienNC td,caulacbo_biennc clb1 ,CAULACBO_BienNC clb2,SANVD_BienNC svd
where td.MASAN_0101=SVD.MASAN_0101
AND TD.MACLB1_0101=CLB1.MACLB_0101 AND TD.MACLB2_0101=CLB2.MACLB_0101
AND
(TD.MACLB1_0101=
(SELECT top 1 maclb_0101 from BANGXH_BienNC where NAM_0101=2009 and VONG_0101=3 order by HANG_0101)
or
td.MACLB2_0101=
(SELECT top 1 maclb_0101 from BANGXH_BienNC where NAM_0101=2009 and VONG_0101=3 order by HANG_0101));
go
select * from v12
--13.	Cho biết danh sách các trận đấu (NGAYTD, TENSAN, TENCLB1, TENCLB2, KETQUA) của câu lạc bộ CLB có thứ hạng thấp nhất trong bảng xếp hạng vòng 3 năm 2009
drop view v13
go
create view v13
as
select *
from TRANDAU_BienNC td,caulacbo_biennc clb1,caulacbo_biennc clb2,sanvd_biennc svd
where td.masan_0101=svd.masan_0101
and 
(td.maclb1_0101=
(select top 1 maclb_0101 from bangxh_biennc where nam_0101=2009 and vong_0101=3 order by HANG_0101 desc)
or
td.MACLB2_0101=
(select top 1 maclb_0101 from bangxh_biennc where nam_0101=2009 and vong_0101=3 order by HANG_0101 desc));
go
select * from v13