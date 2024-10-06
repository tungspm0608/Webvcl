package com.example.webvcl.webvcl.Repository;

import com.example.webvcl.webvcl.Entity.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface SanPhamRepo extends JpaRepository<SanPham, Integer> {
    List<SanPham> findByLoaiId(int idLoai); // Tìm sản phẩm theo id loại
}
