-- ============================================
-- BÀI TẬP SQL - SV: ĐẶNG ĐÌNH ĐẠT
-- Ngày sinh: 06/02/2004 | SĐT: 092124974
-- ============================================

-- 3. Tìm sinh viên trùng ngày/tháng/năm sinh với 06/02/2004
-- Lọc sinh viên có ngày sinh đúng 2004-02-06, xử lý null
SELECT *
FROM SV
WHERE ns IS NOT NULL
  AND ns = '2004-02-06'
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;

-- 4. Tìm sinh viên trùng ngày và tháng sinh với 6/2
-- Lọc sinh viên sinh ngày 6 tháng 2 (bất kể năm), xử lý null
SELECT *
FROM SV
WHERE ns IS NOT NULL
  AND DAY(ns) = 6
  AND MONTH(ns) = 2
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;

-- 5. Tìm sinh viên trùng tháng và năm sinh với 2/2004
-- Lọc sinh viên sinh tháng 2 năm 2004 (bất kể ngày), xử lý null
SELECT *
FROM SV
WHERE ns IS NOT NULL
  AND MONTH(ns) = 2
  AND YEAR(ns) = 2004
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;

-- 6. Tìm sinh viên trùng tên với Đạt
-- Lọc sinh viên có tên là Đạt, xử lý null
SELECT *
FROM SV
WHERE ten IS NOT NULL
  AND ten = N'Đạt'
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;

-- 7. Tìm sinh viên trùng họ và tên đệm với Đặng Đình
-- Lọc sinh viên có họ và tên đệm là Đặng Đình, xử lý null
SELECT *
FROM SV
WHERE hodem IS NOT NULL
  AND hodem = N'Đặng Đình'
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;

-- 8. Tìm sinh viên có số điện thoại sai khác đúng 1 chữ số so với 092124974
-- So sánh số điện thoại với 092124974, tìm số khác đúng 1 chữ số, xử lý null và số không hợp lệ
WITH ValidSDT AS (
    SELECT *
    FROM SV
    WHERE sdt IS NOT NULL
      AND sdt <> ''
      AND sdt NOT LIKE '%[^0-9]%'
      AND LEN(sdt) = LEN('092124974')
)
SELECT *
FROM ValidSDT
WHERE (
    SELECT COUNT(*)
    FROM (
        SELECT TOP (LEN(sdt)) ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
        FROM sys.columns
    ) AS nums
    WHERE SUBSTRING(sdt, nums.n, 1) <> SUBSTRING('092124974', nums.n, 1)
) = 1
ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS;


-- 9. Liệt kê sinh viên ngành Kỹ thuật Máy tính, sắp xếp theo tên và họ đệm (tiếng Việt)
-- Lọc sinh viên ngành KMT (dùng KTO dựa trên dữ liệu), xử lý null, sắp xếp đúng tiếng Việt
SELECT *
FROM SV
WHERE lop IS NOT NULL
  AND lop LIKE '%KMT%'
ORDER BY 
    COALESCE(ten, '') COLLATE Vietnamese_CI_AS,
    COALESCE(hodem, '') COLLATE Vietnamese_CI_AS;

-- 10. Liệt kê sinh viên NỮ ngành KMT (ước lượng theo tên nữ phổ biến)
 SELECT *
FROM SV
WHERE lop LIKE '%KMT%'
  AND (
    hodem LIKE '%Thị%'
	OR hodem LIKE '%Hồng%'
	OR hodem LIKE '%Lan%'
	OR hodem LIKE '%Linh%'
	OR hodem LIKE '%Thúy%'
	OR hodem LIKE '%Hương%'
    OR ten IN (N'Thủy', N'Hoa', N'Ly', N'Mai', N'Lan', N'Thu', N'Xuân', N'Hằng', N'Loan',
	N'Thoa', N'Thơm', N'Yến', N'Thùy', N'Thảo', N'Trang', N'Thảo', N'Hương', 
    N'Lan', N'Vân', N'Nhung', N'Thu' ));


