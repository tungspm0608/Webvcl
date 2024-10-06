<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chỉnh Sửa Sản Phẩm</title>
</head>
<body>
<h2>Chỉnh Sửa Sản Phẩm</h2>

<form:form method="post" action="${pageContext.request.contextPath}/sanpham/update/${sanPham.id}" modelAttribute="sanPham">
    <label for="ma">Mã sản phẩm:</label>
    <form:input path="ma" required="true"/><br/>

    <label for="ten">Tên sản phẩm:</label>
    <form:input path="ten" required="true"/><br/>

    <label for="thongtin">Thông tin sản phẩm:</label>
    <form:input path="thongtin"/><br/>

    <label for="gia">Giá:</label>
    <form:input path="gia" required="true"/><br/>

    <label for="trangthai">Trạng thái:</label>
    <form:input path="trangthai" required="true"/><br/>

    <label for="soluongdaban">Số lượng đã bán:</label>
    <form:input path="soluongdaban" required="true"/><br/>

    <label for="anh">Ảnh sản phẩm:</label>
    <form:input path="anh"/><br/>

    <input type="submit" value="Cập nhật sản phẩm"/>
</form:form>

<a href="${pageContext.request.contextPath}/sanpham">Quay lại danh sách sản phẩm</a>
</body>
</html>
