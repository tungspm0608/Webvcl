package com.example.webvcl.webvcl.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "SanPham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")  // Tên cột trong cơ sở dữ liệu
    private int id;

    @Column(name = "ma")  // Tên cột cho mã sản phẩm
    private String ma;

    @Column(name = "ten")  // Tên cột cho tên sản phẩm
    private String ten;

    @Column(name = "thongtin")  // Tên cột cho thông tin sản phẩm
    private String thongtin;

    @Column(name = "gia")  // Tên cột cho giá sản phẩm
    private double gia;

    @Column(name = "trangthai")  // Tên cột cho trạng thái sản phẩm
    private int trangthai;

    @Column(name = "soluongdaban")  // Tên cột cho số lượng đã bán
    private int soluongdaban;

    @Column(name = "anh")  // Tên cột cho ảnh sản phẩm
    private String anh;

//    // Nhiều SanPham thuộc về một Loai
    @ManyToOne
    @JoinColumn(name = "idLoai") // Tên cột foreign key trong bảng SanPham
    private Loai loai;
}
