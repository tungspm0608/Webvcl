package com.example.webvcl.webvcl.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Entity
@Table(name = "SanPham")
@Data // Tạo tự động getter, setter, toString, equals, và hashCode
@NoArgsConstructor // Tạo constructor không tham số
@AllArgsConstructor // Tạo constructor có tham số
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String ma;
    private String ten;
    private String thongtin;
    private double gia;
    private int trangthai;
    private int soluongdaban;
    private String anh;
}
