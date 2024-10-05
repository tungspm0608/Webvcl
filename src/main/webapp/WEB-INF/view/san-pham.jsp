<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SanPham</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>

<div style="display: flex;">
    <div id="content1">
        <nav class="navbar bg-body-tertiary">
            <div class="container">

                <a class="navbar-brand" href="#">
                    <img src="" class="object-fit-cover border rounded" alt="hnh-shop" width="80"
                         height="80">
                    HNH Shop
                </a>
            </div>
        </nav>
        <div class="container-fluid">
            <span>Wellcome,</span><span> Chu Thị Ngọc</span>
        </div>
        <div class="container-fluid">
            <a href="/hnh-shop/trang-chu">
            <button class="h2 btn btn-primary  w-100 p-3 text-light">Bán hàng tại quầy</button>
            </a>
        </div>

        <div class="container-fluid">
            <a href="/hnh-shop/san-pham">
                <button class="h2 btn btn-primary  w-100 p-3 text-light">Quản lý sản phẩm</button>
            </a>
        </div>
        <div class="container-fluid">
            <button class="h2 btn btn-primary w-100 p-3 text-light">Quản lý hóa đơn</button>
        </div>
        <div class="container-fluid">
            <button class="h2 btn btn-primary w-100 p-3 text-light">Quản lý nhân viên</button>
        </div>
        <div class="container-fluid">
            <button class="h2 btn btn-primary w-100 p-3 text-light">Quản lý voucher</button>
        </div>
        <div class="container-fluid">
            <button class="h2 btn btn-primary w-100 p-3 text-light">Quản lý tài khoản</button>
        </div>
        <div class="container-fluid">
            <button class="h2 btn btn-primary w-100 p-3 text-light">
                Đăng xuất
            </button>
        </div>
    </div>
    <div class="container">
        <div class="container content-add" style="max-height: 520px;">
            <h2 class="text-center">Thêm sản phẩm</h2>
            <form class="row g-3" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <label class="">Mã sản phẩm</label>
                        <input type="text" class="form-control" name="ma">
                    </div>
                    <div class="col-md-6">
                        <label class="">Tên sản phẩm</label>
                        <input type="text" class="form-control" name="ten">
                    </div>
                </div>
                <div class="col-md-6">
                    <label class="">Trạng thái</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="trangThai" id="trangThai1" value="1"
                               checked>
                        <label class="form-check-label" for="trangThai1">Còn hàng</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="trangThai" id="trangThai2" value="0">
                        <label class="form-check-label" for="trangThai2">Hết hàng</label>
                    </div>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-outline-primary">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-file-earmark-plus" viewBox="0 0 16 16">
                            <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5"/>
                            <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5z"/>
                        </svg>
                        Thêm
                    </button>
                </div>
            </form>
        </div>
        </tbody>
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>