package com.example.webvcl.webvcl.Repository;

import com.example.webvcl.webvcl.Entity.ChiTietSanPham;
import com.example.webvcl.webvcl.Entity.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ChiTietSanPhamRepo extends JpaRepository<ChiTietSanPham, Integer> {
    List<SanPham> findByLoaiId(int idLoai); // Tìm sản phẩm theo id loại
}
