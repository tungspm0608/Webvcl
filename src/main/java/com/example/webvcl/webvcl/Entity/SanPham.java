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

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "SanPham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "idloai")
    private Loai loai;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "thongtin")
    private String thongTin;

    @Column(name = "gia")
    private Double gia;

    @Column(name = "trangthai")
    private Integer trangThai;

    @Column(name = "soluongdaban")
    private Integer soLuongDB;

    @Column(name = "anh")
    private String anh;
}
