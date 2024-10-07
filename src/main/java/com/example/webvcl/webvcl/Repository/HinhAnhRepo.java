package com.example.webvcl.webvcl.Repository;

import com.example.webvcl.webvcl.Entity.HinhAnh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HinhAnhRepo extends JpaRepository<HinhAnh, Integer> {
}
