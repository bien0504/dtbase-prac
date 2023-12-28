/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
a.1 In ra dòng chữ 'Xin chào'
*/
CREATE PROCEDURE bai4a1_BienNC
AS
BEGIN
	PRINT N'XIN CHÀO!!!!!'
END;
GO
EXECUTE bai4a1_BienNC 
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
2.	In ra dòng chữ “ Xin chào” + @ten với @ten là tham số đầu vào là tên của bạn. 
Cho thực thi và in giá trị cảu các tham số này để kiểm tra
*/
CREATE PROCEDURE bai4a2_BienNC
@ten_BienNC NVARCHAR(30)
AS
BEGIN
	PRINT CONCAT(N'XIN CHÀO ', @ten_BienNC)
END;
GO
EXECUTE bai4a2_BienNC N'Nguyễn Công Biển'
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
3.	Nhập vào 2 số @s1,@s2. In ra câu “Tổng là : @tg’ với @tg = @s1+@s2
*/
CREATE PROCEDURE bai4a3_BienNC
	@s1_BienNC INT, @s2_BienNC INT
AS
BEGIN
	DECLARE @tg_BienNC INT, @out_BienNC NVARCHAR(100)
	SET		@tg_BienNC = @s1_BienNC + @s2_BienNC
	SET		@out_BienNC = N'Tổng là : ' + CAST(@tg_BienNC AS NVARCHAR(100))
	PRINT	@out_BienNC
END;
GO
EXEC bai4a3_BienNC 5, 5;
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
4. Nhập vào 2 số @s1,@s2. Xuất min và max của chúng ra tham số @max và @min. 
Cho thực thi và in giá trị của các tham số này để kiểm tra.
*/
CREATE PROCEDURE bai4a4_BienNC
	@s1_BienNC INT, @s2_BienNC INT
AS
BEGIN
	DECLARE @min_BienNC INT, @out_BienNC NVARCHAR(200),@max_BienNC INT
	SET		@min_BienNC = @s2_BienNC
	IF		@s1_BienNC <= @s2_BienNC SET @min_BienNC = @s1_BienNC 
	SET		@max_BienNC = @s2_BienNC
	IF		@s1_BienNC >= @s2_BienNC SET @max_BienNC = @s1_BienNC 
	SET		@out_BienNC = N'Nguyễn Công Biển hiện lên và nói: max và min của ' + 
			CAST(@s1_BienNC AS nvarchar(50)) + N' và ' + CAST(@s2_BienNC AS nvarchar(50)) + ' là ' + 
			CAST(@max_BienNC AS nvarchar(50)) + N' và ' + CAST(@min_BienNC AS nvarchar(50))
	PRINT	@out_BienNC
END;
GO
EXEC bai4a4_BienNC 96, 60;
GO
/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
5. Nhập vào số nguyên @n. In ra các số từ 1 đến @n
*/
CREATE PROCEDURE bai4a5_BienNC
@N_BienNC int
AS	
	DECLARE @i_BienNC INT, @out_BienNC NVARCHAR(200)
	SET @i_BienNC = 1;
	SET @out_BienNC = N'Nguyễn Công Biển hiện lên và nói: ';
	WHILE @i_BienNC <= @N_BienNC
		BEGIN
			SET @out_BienNC = @out_BienNC +N' ' + CAST(@i_BienNC AS NVARCHAR(20))
			SET @i_BienNC = @i_BienNC + 1
		END
	PRINT @out_BienNC
GO
EXECUTE bai4a5_BienNC 5;
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
6.	Nhập vào số nguyên @n. In ra tổng các số chẵn từ 1 đến @n
*/
CREATE PROCEDURE bai4a6_BienNC
@N_BienNC int
AS	
	DECLARE @i_BienNC INT, @out_BienNC NVARCHAR(200)
	SET @i_BienNC = 1;
	SET @out_BienNC = N'Nguyễn Công Biển hiện lên và nói: ';
	WHILE @i_BienNC <= @N_BienNC 
		BEGIN
			IF(@i_BienNC % 2 = 0) SET @out_BienNC = @out_BienNC +N' ' + CAST(@i_BienNC AS NVARCHAR(20))
			SET @i_BienNC = @i_BienNC + 1
		END
	PRINT @out_BienNC
GO
EXECUTE bai4a6_BienNC 5;
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v1_BienNC
AS
BEGIN
	SELECT ct.* 
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM CAUTHU_BienNC ct, CAULACBO_BienNC clb, QUOCGIA_BienNC qg
	--áp cấc điều kiện cần thiết với đề bài_
	WHERE ct.MACLB_0101 = clb.MACLB_0101 AND ct.MAQG_0101 = qg.MAQG_0101
	AND clb.TENCLB_0101 = N'SHB Đà Nẵng' AND qg.TENQG_0101 = N'Bra-xin';
END;
GO
EXECUTE bai4a7_v1_BienNC
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v2_BienNC
AS
BEGIN
	SELECT td.MATRAN_0101, td.NGAYTD_0101, svd.TENSAN_0101, 
		   clb1.TENCLB_0101 AS [CLB1_0101], clb2.TENCLB_0101 AS [CLB2_0101], td.KETQUA_0101 
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM TRANDAU_BienNC td, CAULACBO_BienNC clb1, CAULACBO_BienNC clb2, SANVD_BienNC svd
	--áp cấc điều kiện cần thiết với đề bài
	WHERE td.MACLB1_0101 = clb1.MACLB_0101 AND td.MACLB2_0101 = clb2.MACLB_0101
	AND td.MASAN_0101 = svd.MASAN_0101
END;
GO
EXECUTE bai4a7_v2_BienNC
GO

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v3_BienNC
AS
BEGIN
SELECT hlv.MAHLV_0101, hlv.TENHLV_0101, hlv.NGAYSINH_0101, hlv.DIACHI_0101,
	   hlv_clb.VAITRO_0101, clb.TENCLB_0101
--chọn các trường và alias cho các cột một cách cần thiết
FROM HUANLUYENVIEN_BienNC hlv, HLV_CLB_BienNC hlv_clb, CAULACBO_BienNC clb
--áp cấc điều kiện cần thiết với đề bài
WHERE hlv.MAHLV_0101 = hlv_clb.MAHLV_0101 AND hlv_clb.MACLB_0101 = clb.MACLB_0101
AND hlv.MAQG_0101 = 'VN';
END;
GO
EXECUTE bai4a7_v3_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v4_BienNC
AS
BEGIN
	SELECT clb.MACLB_0101, clb.TENCLB_0101, svd.TENSAN_0101, svd.DIACHI_0101, COUNT(MACT_0101) AS [so_ct_nc_ngoai_0101]
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM CAULACBO_BienNC clb, SANVD_BienNC svd, CAUTHU_BienNC ct
	--áp cấc điều kiện cần thiết với đề bài
	WHERE clb.MACLB_0101 = ct.MACLB_0101 AND clb.MASAN_0101 = svd.MASAN_0101
	AND ct.MAQG_0101 <> 'VN'
	GROUP BY clb.MACLB_0101, clb.TENCLB_0101, svd.TENSAN_0101, svd.DIACHI_0101
END;
GO
EXECUTE bai4a7_v4_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v5_BienNC
AS
BEGIN
	SELECT tinh.TENTINH_0101, COUNT(MACT_0101) AS [so_ct_nc_ngoai_0101]
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM TINH_BienNC tinh JOIN CAULACBO_BienNC clb ON tinh.MATINH_0101 = clb.MATINH_0101
	LEFT JOIN CAUTHU_BienNC ct ON ct.MACLB_0101 = clb.MACLB_0101
	--áp các điều kiện cần thiết theo yêu cầu đề bài
	AND ct.VITRI_0101 = N'Tiền đạo'
	--nhóm theo tính
	GROUP BY tinh.TENTINH_0101
END;
GO
EXECUTE bai4a7_v5_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v6_BienNC
AS
BEGIN
	SELECT TOP 1 clb.TENCLB_0101, tinh.TENTINH_0101
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM CAULACBO_BienNC clb, TINH_BienNC tinh, BANGXH_BienNC bxh
	--áp cấc điều kiện cần thiết với đề bài
	WHERE tinh.MATINH_0101 = clb.MATINH_0101 AND clb.MACLB_0101 = bxh.MACLB_0101
	AND bxh.VONG_0101 = 3 AND bxh.NAM_0101 = 2009 AND bxh.HANG_0101 = 1;
END;
GO
EXECUTE bai4a7_v6_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v7_BienNC
AS
BEGIN
	SELECT hlv.TENHLV_0101 --chọn tên hlv
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM HUANLUYENVIEN_BienNC hlv, HLV_CLB_BienNC hlv_clb
	--chọn các bảng phù hợp
	WHERE hlv.MAHLV_0101 = hlv_clb.MAHLV_0101 
	--join hai bảng
	AND hlv_clb.VAITRO_0101 IS NOT NULL
	AND hlv.DIENTHOAI_0101 IS NULL;
	--lọc các điều kiện về vai trò và số điện thoại
END;
GO
EXECUTE bai4a7_v7_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v8_BienNC
AS
BEGIN
	SELECT hlv.*
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM HUANLUYENVIEN_BienNC hlv, HLV_CLB_BienNC hlv_clb
	--áp cấc điều kiện cần thiết với đề bài
	WHERE hlv.MAHLV_0101 = hlv_clb.MAHLV_0101
	AND hlv.MAQG_0101 LIKE 'VN'
	AND hlv_clb.MACLB_0101 IS NULL;
END;
GO
EXECUTE bai4a7_v8_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a7_v9_BienNC
AS
BEGIN
	SELECT MACLB1_0101, MACLB2_0101, NAM_0101, VONG_0101, 
		   CONVERT(INT,SUBSTRING(KETQUA_0101, 1, CHARINDEX('-',KETQUA_0101,1)-1)) AS [Số bàn thắng của CLB1],
		   CONVERT(INT,SUBSTRING(KETQUA_0101, CHARINDEX('-',KETQUA_0101,1)+1, LEN(KETQUA_0101))) AS [Số bàn thua của CLB1]
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM TRANDAU_BienNC;
END;
GO
EXECUTE bai4a7_v9_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v10_BienNC
AS
BEGIN
	SELECT MACLB1_0101 AS [MACLB_0101], NAM_0101, VONG_0101,
		   CONVERT(INT,SUBSTRING(KETQUA_0101, 1, CHARINDEX('-',KETQUA_0101,1)-1)) AS [SOBANTHANG_0101], 
		   CONVERT(INT,SUBSTRING(KETQUA_0101, CHARINDEX('-', KETQUA_0101,1) + 1, LEN(KETQUA_0101))) AS [SOBANTHUA_0101]
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM TRANDAU_BienNC;
END;
GO
EXECUTE bai4a7_v10_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a7_v11_BienNC
AS
BEGIN
	SELECT MACLB2_0101 AS [MACLB_0101], NAM_0101, VONG_0101,  
		   CONVERT(INT,SUBSTRING(KETQUA_0101, 1, CHARINDEX('-',KETQUA_0101,1)-1)) AS [SOBANTHANG_0101], 
		   CONVERT(INT,SUBSTRING(KETQUA_0101, CHARINDEX('-', KETQUA_0101,1) + 1, LEN(KETQUA_0101))) AS [SOBANTHUA_0101]
	--chọn các trường và alias cho các cột một cách cần thiết
	FROM TRANDAU_BienNC;
END;
GO
EXECUTE bai4a7_v11_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v12_BienNC
AS
BEGIN
	SELECT td.NGAYTD_0101, svd.TENSAN_0101, clb1.TENCLB_0101 AS [TENCLB1], clb2.TENCLB_0101 AS [TENCLB2], td.KETQUA_0101  
	--chọn các trường và alias cho các cột một cách cần thiết, đồng thời chọn các bảng để lấy dữ liệu
	FROM TRANDAU_BienNC td, CAULACBO_BienNC clb1, CAULACBO_BienNC clb2, SANVD_BienNC svd
	--áp cấc điều kiện cần thiết với đề bài và join các bảng
	WHERE td.MASAN_0101 = svd.MASAN_0101 
	AND td.MACLB1_0101 = clb1.MACLB_0101 AND td.MACLB2_0101 = clb2.MACLB_0101
	AND 
	(td.MACLB1_0101 = 
	--subquery lấy clb đội hạng cao nhất đến hết vòng 3 năm 2009
	(SELECT TOP 1 MACLB_0101 FROM BANGXH_BienNC WHERE NAM_0101 = 2009 AND VONG_0101 = 3 ORDER BY HANG_0101)
	OR
	td.MACLB2_0101 =
	(SELECT TOP 1 MACLB_0101 FROM BANGXH_BienNC WHERE NAM_0101 = 2009 AND VONG_0101 = 3 ORDER BY HANG_0101));
	--xem view
END;
GO
EXECUTE bai4a7_v12_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
7. Viết store procedure tương ứng với các cầu ở phần View. Sau đó cho thể hiện kết quả
*/
CREATE PROCEDURE bai4a7_v13_BienNC
AS
BEGIN
SELECT td.NGAYTD_0101, svd.TENSAN_0101, clb1.TENCLB_0101 AS [TENCLB1], clb2.TENCLB_0101 AS [TENCLB2], td.KETQUA_0101
--chọn các trường và alias cho các cột một cách cần thiết, đồng thời chọn các bảng để lấy dữ liệu  
FROM TRANDAU_BienNC td, CAULACBO_BienNC clb1, CAULACBO_BienNC clb2, SANVD_BienNC svd
--áp cấc điều kiện cần thiết với đề bài và join các bảng
WHERE td.MASAN_0101 = svd.MASAN_0101 
AND td.MACLB1_0101 = clb1.MACLB_0101 AND td.MACLB2_0101 = clb2.MACLB_0101
AND 
(td.MACLB1_0101 = 
--subquery lấy clb đội hạng thấp nhất đến hết vòng 3 năm 2009
(SELECT TOP 1 MACLB_0101 FROM BANGXH_BienNC WHERE NAM_0101 = 2009 AND VONG_0101 = 3 ORDER BY HANG_0101 DESC)
OR
td.MACLB2_0101 =
(SELECT TOP 1 MACLB_0101 FROM BANGXH_BienNC WHERE NAM_0101 = 2009 AND VONG_0101 = 3 ORDER BY HANG_0101 DESC));
--xem view
END;
GO
EXECUTE bai4a7_v13_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng QUOCGIA_BienNC */
-- QUOCGIA_BienNC_INSERT
CREATE PROCEDURE bai4a8_QUOCGIA_BienNC_INSERT
	@maqg_BienNC VARCHAR(5), @tenqg_BienNC NVARCHAR(60)
AS
BEGIN
	INSERT INTO QUOCGIA_BienNC(MAQG_0101, TENQG_0101)
	VALUES (@maqg_BienNC, @tenqg_BienNC)
END;
GO
-- exec
EXEC bai4a8_QUOCGIA_BienNC_INSERT 'CHN', N'China';
SELECT * FROM QUOCGIA_BienNC;

-- QUOCGIA_BienNC_UPDATE
CREATE PROCEDURE bai4a8_QUOCGIA_BienNC_UPDATE
	@maqg_BienNC VARCHAR(5), @tenqg_BienNC NVARCHAR(60)
AS
BEGIN
	UPDATE QUOCGIA_BienNC
	SET TENQG_0101 = @tenqg_BienNC
	WHERE MAQG_0101 = @maqg_BienNC
END;
-- exec
GO
EXEC bai4a8_QUOCGIA_BienNC_UPDATE 'CHN', N'Trung Quốc';
SELECT * FROM QUOCGIA_BienNC;

-- QUOCGIA_BienNC_DELETE
CREATE PROCEDURE bai4a8_QUOCGIA_BienNC_DELETE
	@maqg_BienNC VARCHAR(5)
AS
BEGIN
	DELETE QUOCGIA_BienNC
	WHERE MAQG_0101 = @maqg_BienNC
END;
-- exec
GO
EXEC bai4a8_QUOCGIA_BienNC_DELETE 'CHN';
SELECT * FROM QUOCGIA_BienNC;

-- QUOCGIA_BienNC_SELECT
CREATE PROCEDURE bai4a8_QUOCGIA_BienNC_SELECT
AS
BEGIN
	SELECT * FROM QUOCGIA_BienNC
END;
-- exec
GO
EXEC bai4a8_QUOCGIA_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng TINH_BienNC */
-- TINH_BienNC_INSERT
CREATE PROCEDURE bai4a8_TINH_BienNC_INSERT
	@matinh_BienNC VARCHAR(5), @tentinh_BienNC NVARCHAR(100)
AS
BEGIN
	INSERT INTO TINH_BienNC(MATINH_0101, TENTINH_0101)
	VALUES (@matinh_BienNC, @tentinh_BienNC)
END;
-- exec
GO
EXEC bai4a8_TINH_BienNC_INSERT 'TB', N'Thái Bĩnh';
SELECT * FROM TINH_BienNC;

-- TINH_BienNC_UPDATE
CREATE PROCEDURE bai4a8_TINH_BienNC_UPDATE
	@matinh_BienNC VARCHAR(5), @tentinh_BienNC NVARCHAR(100)
AS
BEGIN
	UPDATE TINH_BienNC
	SET TENTINH_0101 = @tentinh_BienNC
	WHERE MATINH_0101 = @matinh_BienNC
END;
-- exec
GO
EXEC bai4a8_TINH_BienNC_UPDATE 'TB', N'Thái Bình';
SELECT * FROM TINH_BienNC;

-- TINH_BienNC_DELETE
CREATE PROCEDURE bai4a8_TINH_BienNC_DELETE
	@matinh_BienNC VARCHAR(5)
AS
BEGIN
	DELETE TINH_BienNC
	WHERE MATINH_0101 = @matinh_BienNC
END;
-- exec
GO
EXEC bai4a8_TINH_BienNC_DELETE 'TB';
SELECT * FROM TINH_BienNC;

-- TINH_BienNC_SELECT
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_TINH_BienNC_SELECT
AS
BEGIN
	SELECT * FROM TINH_BienNC;
	RETURN;
END;
-- exec
GO
EXEC bai4a8_TINH_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng SANVD_BienNC */
-- SANVD_BienNC_INSERT
CREATE PROCEDURE bai4a8_SANVD_BienNC_INSERT
	@masan_BienNC VARCHAR(5), @tensan_BienNC NVARCHAR(100), @diachi_BienNC NVARCHAR(200)
AS
BEGIN
	INSERT INTO SANVD_BienNC(MASAN_0101, TENSAN_0101, DIACHI_0101)
	VALUES (@masan_BienNC, @tensan_BienNC, @diachi_BienNC)
END;
-- exec
GO
EXEC bai4a8_SANVD_BienNC_INSERT 'AMS', N'Ams Arena', N'1 Hoàng Minh Giám, Cầu Giấy, Hà Nội';
SELECT * FROM SANVD_BienNC;

-- SANVD_BienNC_UPDATE
CREATE PROCEDURE bai4a8_SANVD_BienNC_UPDATE
	@masan_BienNC VARCHAR(5), @tensan_BienNC NVARCHAR(100), @diachi_BienNC NVARCHAR(200)
AS
BEGIN
	UPDATE SANVD_BienNC
	SET TENSAN_0101 = @tensan_BienNC, DIACHI_0101 = @diachi_BienNC
	WHERE MASAN_0101 = @masan_BienNC
END;
-- exec
GO
EXEC bai4a8_SANVD_BienNC_UPDATE 'AMS', N'Ams Arena', N'Somewhere in Narnia';
SELECT * FROM SANVD_BienNC;

-- SANVD_BienNC_DELETE
CREATE PROCEDURE bai4a8_SANVD_BienNC_DELETE
	@masan_BienNC VARCHAR(5)
AS
BEGIN
	DELETE SANVD_BienNC
	WHERE MASAN_0101 = @masan_BienNC
END;
-- exec
GO
EXEC bai4a8_SANVD_BienNC_DELETE 'AMS';
SELECT * FROM SANVD_BienNC;

-- SANVD_BienNC_SELECT
CREATE PROCEDURE bai4a8_SANVD_BienNC_SELECT
AS
BEGIN
	SELECT * FROM SANVD_BienNC
END;
-- exec
GO
EXEC bai4a8_SANVD_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng HUANLUYENVIEN_BienNC */
-- HUANLUYENVIEN_BienNC_INSERT
CREATE PROCEDURE bai4a8_HUANLUYENVIEN_BienNC_INSERT
	@mahlv_BienNC VARCHAR(5),
	@tenhlv_BienNC NVARCHAR(100),
	@ngaysinh_BienNC DATETIME,
	@diachi_BienNC NVARCHAR(200),
	@dienthoai_BienNC NVARCHAR(20),
	@maqg_BienNC VARCHAR(5)
AS
BEGIN
	INSERT INTO HUANLUYENVIEN_BienNC(MAHLV_0101, TENHLV_0101, NGAYSINH_0101, DIACHI_0101, DIENTHOAI_0101, MAQG_0101)
	VALUES (@mahlv_BienNC, @tenhlv_BienNC, @ngaysinh_BienNC, @diachi_BienNC, @dienthoai_BienNC, @maqg_BienNC)
END;
GO
EXEC bai4a8_HUANLUYENVIEN_BienNC_INSERT HLV07, N'Nguyễn Công Biển', '11-19-2003', NULL, '0936167666', 'VN';
SELECT * FROM HUANLUYENVIEN_BienNC;

-- HUANLUYENVIEN_BienNC_UPDATE
CREATE PROCEDURE bai4a8_HUANLUYENVIEN_BienNC_UPDATE
	@mahlv_BienNC VARCHAR(5),
	@tenhlv_BienNC NVARCHAR(100),
	@ngaysinh_BienNC DATETIME,
	@diachi_BienNC NVARCHAR(200),
	@dienthoai_BienNC NVARCHAR(20),
	@maqg_BienNC VARCHAR(5)
AS
BEGIN
	UPDATE HUANLUYENVIEN_BienNC
	SET TENHLV_0101 = @tenhlv_BienNC,
		NGAYSINH_0101 = @ngaysinh_BienNC,
		DIACHI_0101 = @diachi_BienNC,
		DIENTHOAI_0101 = @dienthoai_BienNC,
		MAQG_0101 = @maqg_BienNC
	WHERE MAHLV_0101 = @mahlv_BienNC
END;
-- exec
GO
EXEC bai4a8_HUANLUYENVIEN_BienNC_UPDATE HLV07, N'Trần Ngọc Nam', '07-15-2001', NULL, '087493729', 'VN';
SELECT * FROM HUANLUYENVIEN_BienNC;

-- HUANLUYENVIEN_BienNC_DELETE
CREATE PROCEDURE bai4a8_HUANLUYENVIEN_BienNC_DELETE
	@mahlv_BienNC VARCHAR(5)
AS
BEGIN
	DELETE HUANLUYENVIEN_BienNC
	WHERE MAHLV_0101 = @mahlv_BienNC
END;
-- exec
GO
EXEC bai4a8_HUANLUYENVIEN_BienNC_DELETE HLV07;
SELECT * FROM HUANLUYENVIEN_BienNC;

-- HUANLUYENVIEN_BienNC_SELECT
CREATE PROCEDURE bai4a8_HUANLUYENVIEN_BienNC_SELECT
AS
BEGIN
	SELECT * FROM HUANLUYENVIEN_BienNC
END;
-- exec
GO
EXEC bai4a8_HUANLUYENVIEN_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng HLV_CLB_BienNC */
-- HLV_CLB_BienNC_INSERT
CREATE PROCEDURE bai4a8_HLV_CLB_BienNC_INSERT
	@mahlv_BienNC VARCHAR(5), 
	@maclb_BienNC VARCHAR(5),
	@vaitro_BienNC NVARCHAR(100)
AS
BEGIN
	INSERT INTO HLV_CLB_BienNC
	VALUES (@mahlv_BienNC, @maclb_BienNC, @vaitro_BienNC)
END;
-- exec
GO
EXEC bai4a8_HLV_CLB_BienNC_INSERT 'HLV05', 'KKH', N'HLV Chính';
SELECT * FROM HLV_CLB_BienNC;

-- HLV_CLB_BienNC_UPDATE
CREATE PROCEDURE bai4a8_HLV_CLB_BienNC_UPDATE
	@mahlv_BienNC VARCHAR(5), 
	@maclb_BienNC VARCHAR(5),
	@vaitro_BienNC NVARCHAR(100)
AS
BEGIN
	UPDATE HLV_CLB_BienNC
	SET VAITRO_0101 = @vaitro_BienNC
	WHERE MAHLV_0101 = @mahlv_BienNC AND MACLB_0101 = @maclb_BienNC
END;
-- exec
GO
EXEC bai4a8_HLV_CLB_BienNC_UPDATE 'HLV05', 'KKH', N'HLV phụ';
SELECT * FROM HLV_CLB_BienNC;

-- HLV_CLB_BienNC_DELETE
CREATE PROCEDURE bai4a8_HLV_CLB_BienNC_DELETE
	@mahlv_BienNC VARCHAR(5), 
	@maclb_BienNC VARCHAR(5)
AS
BEGIN
	DELETE HLV_CLB_BienNC
	WHERE MAHLV_0101 = @mahlv_BienNC AND MACLB_0101 = @maclb_BienNC
END;
-- exec
GO
EXEC bai4a8_HLV_CLB_BienNC_DELETE 'HLV05', 'KKH';
SELECT * FROM HLV_CLB_BienNC;

-- HLV_CLB_BienNC_SELECT
CREATE PROCEDURE bai4a8_HLV_CLB_BienNC_SELECT
AS
BEGIN
	SELECT * FROM HLV_CLB_BienNC
END;
-- exec
GO
EXEC bai4a8_HLV_CLB_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng CAUTHU_BienNC */
-- CAUTHU_BienNC_INSERT
CREATE PROCEDURE bai4a8_CAUTHU_BienNC_INSERT
	-- MACT_0101 tăng tự động: MACT_0101 NUMERIC IDENTITY(1,1)
	@hoten_BienNC NVARCHAR(100),
	@vitri_BienNC NVARCHAR(20),
	@ngaysinh_BienNC DATETIME,
	@diachi_BienNC NVARCHAR(200),
	@maclb_BienNC VARCHAR(5),
	@maqg_BienNC VARCHAR(5),
	@so_BienNC INT
AS
BEGIN
	INSERT INTO CAUTHU_BienNC(HOTEN_0101, VITRI_0101, NGAYSINH_0101, DIACHI_0101, MACLB_0101, MAQG_0101,  SO_0101)
	VALUES (@hoten_BienNC, @vitri_BienNC, @ngaysinh_BienNC, @diachi_BienNC, @maclb_BienNC, @maqg_BienNC, @so_BienNC)
END;
-- exec
GO
EXEC bai4a8_CAUTHU_BienNC_INSERT N'Ngô Trung Hiếu', N'Trung vệ', '04-17-2002', NULL, 'GDT', 'VN', 5;
SELECT * FROM CAUTHU_BienNC;

-- CAUTHU_BienNC_UPDATE
CREATE PROCEDURE bai4a8_CAUTHU_BienNC_UPDATE
	@mact_BienNC NUMERIC,
	@hoten_BienNC NVARCHAR(100),
	@vitri_BienNC NVARCHAR(20),
	@ngaysinh_BienNC DATETIME,
	@diachi_BienNC NVARCHAR(200),
	@maclb_BienNC VARCHAR(5),
	@maqg_BienNC VARCHAR(5),
	@so_BienNC INT
AS
BEGIN
	UPDATE CAUTHU_BienNC
	SET HOTEN_0101 = @hoten_BienNC,
		VITRI_0101 = @vitri_BienNC,
		NGAYSINH_0101 = @ngaysinh_BienNC,
		DIACHI_0101 = @diachi_BienNC,
		MACLB_0101 = @maclb_BienNC,
		MAQG_0101 = @maqg_BienNC,
		 SO_0101 = @so_BienNC
	WHERE MACT_0101 = @mact_BienNC
END;
-- exec
GO
EXEC bai4a8_CAUTHU_BienNC_UPDATE 12, N'Ngô Trung Hiếu', N'Hậu vệ', '07-09-2002', NULL, 'HAGL', 'VN', 6;
SELECT * FROM CAUTHU_BienNC;

-- CAUTHU_BienNC_DELETE
CREATE PROCEDURE bai4a8_CAUTHU_BienNC_DELETE
	@mact_BienNC NUMERIC
AS
BEGIN
	DELETE CAUTHU_BienNC
	WHERE MACT_0101 = @mact_BienNC
END;
-- exec
GO
EXEC bai4a8_CAUTHU_BienNC_DELETE 12;
SELECT * FROM CAUTHU_BienNC;

-- CAUTHU_BienNC_SELECT
CREATE PROCEDURE bai4a8_CAUTHU_BienNC_SELECT
AS
BEGIN
	SELECT * FROM CAUTHU_BienNC
END;
-- exec
GO
EXEC bai4a8_CAUTHU_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng CAULACBO_BienNC */
-- CAULACBO_BienNC_INSERT
CREATE PROCEDURE bai4a8_CAULACBO_BienNC_INSERT
	@maclb_BienNC VARCHAR(5),
	@tenclb_BienNC NVARCHAR(100),
	@masan_BienNC VARCHAR(5),
	@matinh_BienNC VARCHAR(5)
AS
BEGIN
	INSERT INTO CAULACBO_BienNC
	VALUES(@maclb_BienNC,@tenclb_BienNC,@masan_BienNC,@matinh_BienNC)
END;
-- exec
GO
EXEC bai4a8_CAULACBO_BienNC_INSERT 'HPC', N'Hải Phòng Club', 'CL', 'DN';
SELECT * FROM CAULACBO_BienNC;

-- CAULACBO_BienNC_UPDATE
CREATE PROCEDURE bai4a8_CAULACBO_BienNC_UPDATE
	@maclb_BienNC VARCHAR(5),
	@tenclb_BienNC NVARCHAR(100),
	@masan_BienNC VARCHAR(5),
	@matinh_BienNC VARCHAR(5)
AS
BEGIN
	UPDATE CAULACBO_BienNC
	SET TENCLB_0101 = @tenclb_BienNC,
		MASAN_0101 = @masan_BienNC,
		MATINH_0101 = @matinh_BienNC
	WHERE MACLB_0101 = @maclb_BienNC
END;
-- exec
GO
EXEC bai4a8_CAULACBO_BienNC_UPDATE 'HPC', N'CLB Hải Phòng', 'NT', 'PY';
SELECT * FROM CAULACBO_BienNC;

-- CAULACBO_BienNC_DELETE
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_CAULACBO_BienNC_DELETE
	@maclb_BienNC VARCHAR(5)
AS
BEGIN
	DELETE CAULACBO_BienNC
	WHERE MACLB_0101 = @maclb_BienNC
END;
-- exec
GO
EXEC bai4a8_CAULACBO_BienNC_DELETE 'HPC';
SELECT * FROM CAULACBO_BienNC;

-- CAULACBO_BienNC_SELECT
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_CAULACBO_BienNC_SELECT
AS
BEGIN
	SELECT * FROM CAULACBO_BienNC
END;
-- exec
GO
EXEC bai4a8_CAULACBO_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng TRANDAU_BienNC */
-- TRANDAU_BienNC_INSERT
CREATE PROCEDURE bai4a8_TRANDAU_BienNC_INSERT
	-- MATRAN_0101 tăng tự động: MATRAN_0101 NUMERIC IDENTITY(1,1)
	@nam_BienNC INT, 
	@vong_BienNC INT, 
	@ngaytd_BienNC DATETIME,
	@maclb1_BienNC VARCHAR(5), 
	@maclb2_BienNC VARCHAR(5),
	@masan_BienNC VARCHAR(5), 
	@ketqua_BienNC VARCHAR(5)
AS
BEGIN
	INSERT INTO TRANDAU_BienNC(NAM_0101, VONG_0101, NGAYTD_0101, MACLB1_0101, MACLB2_0101, MASAN_0101, KETQUA_0101)
	VALUES (@nam_BienNC, @vong_BienNC, @ngaytd_BienNC, @maclb1_BienNC, @maclb2_BienNC, @masan_BienNC, @ketqua_BienNC)
END;
-- exec
GO
EXEC bai4a8_TRANDAU_BienNC_INSERT 2009, 5, '03-10-2009', 'SDN', 'HAGL', 'TH', '2-0';
SELECT * FROM TRANDAU_BienNC;

-- TRANDAU_BienNC_UPDATE
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_TRANDAU_BienNC_UPDATE
	@matran_BienNC NUMERIC,
	@nam_BienNC INT, 
	@vong_BienNC INT, 
	@ngaytd_BienNC DATETIME,
	@maclb1_BienNC VARCHAR(5), 
	@maclb2_BienNC VARCHAR(5),
	@masan_BienNC VARCHAR(5), 
	@ketqua_BienNC VARCHAR(5)
AS
BEGIN
	UPDATE TRANDAU_BienNC
	SET NAM_0101 = @nam_BienNC,
		VONG_0101 = @vong_BienNC,
		NGAYTD_0101 = @ngaytd_BienNC,
		MACLB1_0101 = @maclb1_BienNC,
		MACLB2_0101 = @maclb2_BienNC,
		MASAN_0101 = @masan_BienNC,
		KETQUA_0101 = @ketqua_BienNC
	WHERE MATRAN_0101 = @matran_BienNC
END;
-- exec
GO
EXEC bai4a8_TRANDAU_BienNC_UPDATE 9, 2009, 5, '03-15-2009', 'KKH', 'BBD', 'CL', '3-1';
SELECT * FROM TRANDAU_BienNC;

-- TRANDAU_BienNC_DELETE
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_TRANDAU_BienNC_DELETE
	@matran_BienNC NUMERIC
AS
BEGIN
	DELETE TRANDAU_BienNC
	WHERE MATRAN_0101 = @matran_BienNC
END;
-- exec
GO
EXEC bai4a8_TRANDAU_BienNC_DELETE 9;
SELECT * FROM TRANDAU_BienNC;

-- TRANDAU_BienNC_SELECT
USE QLBongDa_BienNC_865;
GO
CREATE PROCEDURE bai4a8_TRANDAU_BienNC_SELECT
AS
BEGIN
	SELECT * FROM TRANDAU_BienNC;
END;
-- exec
GO
EXEC bai4a8_TRANDAU_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
a. Bài tập về Store Procedure
8. Ứng với mỗi bảng trong CSDL QLBongDa, bạn hãy viết 4 stored Procedure ứng với Insert/Update/Delete/Select. 
Trong đó Stored procedure update và delete lấy khóa chính làm tham số.
*/
/* Bảng BANGXH_BienNC */
-- BANGXH_BienNC_INSERT
CREATE PROCEDURE bai4a8_BANGXH_BienNC_INSERT
	@maclb_BienNC VARCHAR(5),
	@nam_BienNC INT,
	@vong_BienNC INT,
	@sotran_BienNC INT,
	@thang_BienNC INT,
	@hoa_BienNC INT,
	@thua_BienNC INT,
	@hieuso_BienNC VARCHAR(5),
	@diem_BienNC INT,
	@hang_BienNC INT
AS
BEGIN
	INSERT INTO BANGXH_BienNC(MACLB_0101, NAM_0101, VONG_0101, SOTRAN_0101, THANG_0101, HOA_0101, THUA_0101, HIEUSO_0101, DIEM_0101, HANG_0101)
	VALUES (@maclb_BienNC, @nam_BienNC, @vong_BienNC, @sotran_BienNC, @thang_BienNC, @hoa_BienNC, @thua_BienNC, @hieuso_BienNC, @diem_BienNC, @hang_BienNC)
END;
-- exec
GO
EXEC bai4a8_BANGXH_BienNC_INSERT 'BBD', 2009, 5, 3, 2, 1, 1, '5-4', 2, 5;
SELECT * FROM BANGXH_BienNC;

-- BANGXH_BienNC_UPDATE
CREATE PROCEDURE bai4a8_BANGXH_BienNC_UPDATE
	@maclb_BienNC VARCHAR(5),
	@nam_BienNC INT,
	@vong_BienNC INT,
	@sotran_BienNC INT,
	@thang_BienNC INT,
	@hoa_BienNC INT,
	@thua_BienNC INT,
	@hieuso_BienNC VARCHAR(5),
	@diem_BienNC INT,
	@hang_BienNC INT
AS
BEGIN
	UPDATE BANGXH_BienNC
	SET  SOTRAN_0101 = @sotran_BienNC,
		THANG_0101 = @thang_BienNC,
		HOA_0101 = @hoa_BienNC,
		THUA_0101 = @thua_BienNC,
		HIEUSO_0101 = @hieuso_BienNC,
		DIEM_0101 = @diem_BienNC,
		HANG_0101 = @hang_BienNC
	WHERE MACLB_0101 = @maclb_BienNC AND NAM_0101 = @nam_BienNC AND VONG_0101 = @vong_BienNC
END;
-- exec
GO
EXEC bai4a8_BANGXH_BienNC_UPDATE 'BBD', 2009, 5, 4, 1, 1, 2, '6-3', 1, 7;
SELECT * FROM BANGXH_BienNC;

-- BANGXH_BienNC_DELETE
CREATE PROCEDURE bai4a8_BANGXH_BienNC_DELETE
	@maclb_BienNC VARCHAR(5),
	@nam_BienNC INT,
	@vong_BienNC INT
AS
BEGIN
	DELETE BANGXH_BienNC
	WHERE MACLB_0101 = @maclb_BienNC AND NAM_0101 = @nam_BienNC AND VONG_0101 = @vong_BienNC
END;
-- exec
GO
EXEC bai4a8_BANGXH_BienNC_DELETE 'BBD', 2009, 5;
SELECT * FROM BANGXH_BienNC;

-- BANGXH_BienNC_SELECT
CREATE PROCEDURE bai4a8_BANGXH_BienNC_SELECT
AS
BEGIN
	SELECT * FROM BANGXH_BienNC
END;
-- exec
GO
EXEC bai4a8_BANGXH_BienNC_SELECT;

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
1. Khi thêm cầu thủ mới, kiểm tra vị trí trên sân của cầu thủ chỉ thuộc một trong các vị trí sau: 
Thủ môn, Tiền đạo, Tiền vệ, Trung vệ, Hậu vệ.
*/
CREATE TRIGGER bai4b1_BienNC ON CAUTHU_BienNC
FOR INSERT AS
BEGIN
	DECLARE @vitri_BienNC NVARCHAR(20)
	SELECT @vitri_BienNC = VITRI_0101 FROM INSERTED
	IF @vitri_BienNC IN (N'Thủ môn',N'Tiền đạo',N'Tiền vệ',N'Trung vệ', N'Hậu vệ')
		BEGIN
			PRINT N'Thêm cầu thủ mới thành công'
		END
	ELSE --nếu không, roll back cái này
		ROLLBACK TRANSACTION
END
GO
INSERT INTO CAUTHU_BienNC VALUES (N'Nguyễn Công Biển',N'Lau bàn phím','11-19-2003',NULL,'SDN','VN',5)
GO
SELECT * FROM CAUTHU_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
2. Khi thêm cầu thủ mới, kiểm tra số áo của cầu thủ thuộc cùng một câu lạc bộ phải khác nhau
*/
CREATE TRIGGER bai4b2_BienNC ON CAUTHU_BienNC
FOR INSERT AS
BEGIN
	DECLARE @maclb_BienNC VARCHAR(5), @so_BienNC INT
	SELECT @maclb_BienNC = MACLB_0101, @so_BienNC = SO_0101 FROM INSERTED
	IF (SELECT COUNT(*) FROM CAUTHU_BienNC WHERE MACLB_0101 = @maclb_BienNC AND SO_0101 = @so_BienNC) > 1
		ROLLBACK TRANSACTION
	ELSE --nếu không, roll back cái này
		BEGIN
			PRINT N'Thêm cầu thủ mới thành công'
		END
END
GO
INSERT INTO CAUTHU_BienNC VALUES (N'Nguyễn Công Biển',N'Trung vệ','11-19-2003',NULL,'SDN','VN',7)
GO
SELECT * FROM CAUTHU_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
3. Khi thêm thông tin cầu thủ thì in ra câu thông báo bằng Tiếng Việt ‘Đã thêm cầu thủ mới’
*/
CREATE TRIGGER bai4b3_BienNC ON CAUTHU_BienNC
FOR INSERT AS
BEGIN
	PRINT N'Đã thêm cầu thủ mới'
END
GO
INSERT INTO CAUTHU_BienNC VALUES (N'Trần Hồng Hạng',N'Hậu vệ','11-19-2003',NULL,'SDN','VN',1000)
GO
SELECT * FROM CAUTHU_BienNC

GO
DELETE FROM CAUTHU_BienNC
WHERE HOTEN_0101 like N'Trần Hồng Hạng'

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
4. Khi thêm cầu thủ mới, kiểm tra số lượng cầu thủ nước ngoài ở mỗi câu lạc bộ chỉ được 
phép đăng ký tối đa 8 cầu thủ
*/
CREATE TRIGGER bai4b4_BienNC ON CAUTHU_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @maclb_BienNC VARCHAR(5), @maqg_BienNC VARCHAR(5)
	SELECT @maclb_BienNC = MACLB_0101, @maqg_BienNC = MAQG_0101 FROM INSERTED
	IF(SELECT COUNT(*) FROM CAUTHU_BienNC WHERE MACLB_0101=@maclb_BienNC AND MAQG_0101 <> 'VN' GROUP BY MACLB_0101) <= 8
		BEGIN
			PRINT N'Thêm thằng mới thành công'
		END
	ELSE
		ROLLBACK TRANSACTION
END
GO
INSERT INTO CAUTHU_BienNC VALUES (N'Trần Hồng Hạng',N'Hậu vệ','11-19-2003',NULL,'SDN','VN',1000)
GO
SELECT * FROM CAUTHU_BienNC

GO
DELETE FROM CAUTHU_BienNC
WHERE HOTEN_0101 like N'Trần Hồng Hạng'

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
5. Khi thêm tên quốc gia, kiểm tra tên quốc gia không được trùng với tên quốc gia đã có
*/
CREATE TRIGGER bai4b5_BienNC ON QUOCGIA_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @tenqg_BienNC NVARCHAR(60)
	SELECT @tenqg_BienNC = TENQG_0101 FROM inserted 
	IF(SELECT COUNT(*) FROM QUOCGIA_BienNC qg WHERE qg.TENQG_0101 = @tenqg_BienNC) > 1
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			PRINT N'Thêm quốc gia mới thành công'
		END
END

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
6. Khi thêm tên tỉnh thành, kiểm tra tên tỉnh thành không được trùng với tên tỉnh thành đã có
*/
CREATE TRIGGER bai4b6_BienNC ON TINH_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @tentinh_BienNC NVARCHAR(60)
	SELECT @tentinh_BienNC = TENTINH_0101 FROM inserted 
	IF(SELECT COUNT(*) FROM TINH_BienNC tinh WHERE tinh.TENTINH_0101 = @tentinh_BienNC) > 1
		ROLLBACK TRANSACTION
	ELSE
		BEGIN
			PRINT N'Thêm tỉnh mới thành công'
		END
END

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
b. Bài tập về Trigger
7. Không cho sửa kết quả của các trận đấu đã diễn ra
*/
CREATE TRIGGER bai4b7_BienNC ON TRANDAU_BienNC
FOR UPDATE
AS
BEGIN
	ROLLBACK TRANSACTION
END

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
8. Khi phân công huấn luyện viên cho câu lạc bộ:
a. Kiểm tra vai trò của huấn luyện viên chỉ thuộc một trong các vai trò sau: 
HLV chính, HLV phụ, HLV thể lực, HLV thủ môn
*/
CREATE TRIGGER bai4b8a_BienNC ON HLV_CLB_BienNC
FOR INSERT AS
BEGIN
	DECLARE @vaitro_BienNC NVARCHAR(50)
	SELECT @vaitro_BienNC = VAITRO_0101 FROM INSERTED
	IF(@vaitro_BienNC IN (N'HLV Chính',N'HLV phụ',N'HLV thể lực',N'HLV thủ môn'))
		BEGIN
			PRINT N'QUE SERA SERA'
		END
	ELSE
		ROLLBACK TRANSACTION
END

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
8. Khi phân công huấn luyện viên cho câu lạc bộ:
b. Kiểm tra mỗi câu lạc bổ chỉ có tối đa 2 HLV chính
*/
CREATE TRIGGER bai4b8b_BienNC ON HLV_CLB_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @maclb_BienNC VARCHAR(20)
	SELECT @maclb_BienNC = MACLB_0101 FROM INSERTED
	IF(SELECT COUNT(*) FROM HLV_CLB_BienNC WHERE MACLB_0101 = @maclb_BienNC AND VAITRO_0101 = N'HLV Chính') <= 2
		BEGIN
			PRINT N'QUE SERA SERA'
		END
	ELSE
		ROLLBACK TRANSACTION
END

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
9. Khi thêm mới một câu lạc bộ thì kiểm tra xem đã có câu lạc bộ trùng tên với câu lạc bộ
vừa được thêm hay không?
b. Thông báo và revert
*/
CREATE TRIGGER bai4b9a_BienNC ON CAULACBO_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @tenclb_BienNC NVARCHAR(50)
	SELECT @tenclb_BienNC=TENCLB_0101 FROM inserted
	IF(SELECT COUNT(*) FROM CAULACBO_BienNC WHERE TENCLB_0101 = @tenclb_BienNC) >= 2
		BEGIN
			PRINT N'Oh boy trigger bai4b9b was turned on, duplicate club names found'
		END
	PRINT N'Thêm CLB thành công'
END
INSERT INTO CAULACBO_BienNC VALUES ('HPC2', N'SHB ĐÀ NẴNG', 'CL', 'DN')

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
9. Khi thêm mới một câu lạc bộ thì kiểm tra xem đã có câu lạc bộ trùng tên với câu lạc bộ
vừa được thêm hay không?
b. Thông báo và revert
*/
CREATE TRIGGER bai4b9b_BienNC ON CAULACBO_BienNC
FOR INSERT
AS
BEGIN
	DECLARE @tenclb_BienNC NVARCHAR(50)
	SELECT @tenclb_BienNC=TENCLB_0101 FROM inserted
	IF(SELECT COUNT(*) FROM CAULACBO_BienNC WHERE TENCLB_0101 = @tenclb_BienNC) >= 2
		BEGIN
			PRINT N'Oh boy trigger bai4b9b was turned on, rolling back'
			ROLLBACK TRANSACTION
		END
	ELSE
		PRINT N'Thêm CLB thành công'
END
INSERT INTO CAULACBO_BienNC VALUES ('HPC2', N'SHB ĐÀ NẴNG', 'CL', 'DN')

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
a. Danh sách mã cầu thủ của các cầu thủ vừa được sửa
*/
CREATE TRIGGER bai4b10a_BienNC ON CAUTHU_BienNC
FOR UPDATE AS
BEGIN
IF (UPDATE(HOTEN_0101))
	BEGIN
		SELECT inserted.MACT_0101 FROM inserted
	END
END
GO
UPDATE CAUTHU_BienNC
SET HOTEN_0101 = N'Nguyễn Công Phượng'
WHERE HOTEN_0101 Like N'Nguyễn Công Biển'
GO
DROP TRIGGER bai4b10a_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
b. Danh sách mã cầu thủ vừa được sửa và tên cầu thủ mới
*/
CREATE TRIGGER bai4b10b_BienNC ON CAUTHU_BienNC
FOR UPDATE AS
BEGIN
IF (UPDATE(HOTEN_0101))
	BEGIN
		SELECT inserted.MACT_0101, inserted.HOTEN_0101 FROM inserted
	END
END
GO
UPDATE CAUTHU_BienNC
SET HOTEN_0101 = N'Nguyễn Công Biển'
WHERE HOTEN_0101 Like N'Nguyễn Công Phượng'
GO
DROP TRIGGER bai4b10b_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
c. Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ
*/
CREATE TRIGGER bai4b10c_BienNC ON CAUTHU_BienNC
FOR UPDATE AS
BEGIN
IF (UPDATE(HOTEN_0101))
	BEGIN
		SELECT deleted.MACT_0101,deleted.HOTEN_0101 FROM deleted
	END
END
GO
UPDATE CAUTHU_BienNC
SET HOTEN_0101 = N'Nguyễn Công Phượng'
WHERE HOTEN_0101 Like N'Nguyễn Công Biển'
GO
DROP TRIGGER bai4b10c_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
d. Danh sách mã cầu thủ vừa được sửa và tên cầu thủ cũ và tên cầu thủ mới.
*/
CREATE TRIGGER bai4b10d_BienNC ON CAUTHU_BienNC
FOR UPDATE AS
BEGIN
IF (UPDATE(HOTEN_0101))
	BEGIN
		SELECT deleted.MACT_0101, deleted.HOTEN_0101 old_name, inserted.HOTEN_0101 new_name
		FROM deleted JOIN inserted ON deleted.MACT_0101 = inserted.MACT_0101
	END
END
GO
UPDATE CAUTHU_BienNC
SET HOTEN_0101 = N'Nguyễn Công Biển'
WHERE HOTEN_0101 Like N'Nguyễn Công Phượng'
GO
DROP TRIGGER bai4b10d_BienNC

/*=================================================*/
/*BAI THUC HANH SO 4 - TUAN 15
NGUYEN CONG BIEN - 0101 - 2023.1 - 865
10. Khi sửa tên cầu thủ cho một cầu thủ thì in ra:
e. Đưa ra câu thông báo bằng Tiếng Việt: “ Vừa sửa thông tin của cầu thủ có mã số XXX”, 
với XXX là mã cầu thủ vừa được sửa
*/
CREATE TRIGGER bai4b10e_BienNC 
ON CAUTHU_BienNC
FOR UPDATE
AS
BEGIN
IF (UPDATE(HOTEN_0101))
	BEGIN
		DECLARE @mact_BienNC INT
		SELECT @mact_BienNC = MACT_0101 FROM inserted
		PRINT N'Vừa sửa thông tin của cầu thủ có mã số ' + CONVERT(NVARCHAR(5),@mact_BienNC)
	END
END
GO
UPDATE CAUTHU_BienNC
SET HOTEN_0101 = N'Nguyễn Công Phượng'
WHERE HOTEN_0101 Like N'Nguyễn Công Biển'
GO
DROP TRIGGER bai4b10e_BienNC
