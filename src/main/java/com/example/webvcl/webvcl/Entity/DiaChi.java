package com.example.webvcl.webvcl.Entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;
import java.util.List;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@ToString
@Table(name = "DiaChi")
public class DiaChi {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ngaysua")
    private Date ngaySua;

    @Column(name = "ngaytao")
    private Date ngayTao;

    @Column(name = "trangthai")
    private String trangThai;

    @Column(name = "loaidiachi")
    private String loaiDiaChi;

    @Column(name = "diachi")
    private String diaChi;

    @OneToMany(mappedBy = "NguoiDung", cascade = CascadeType.ALL)
    private List<NguoiDung> nguoiDung;


}
