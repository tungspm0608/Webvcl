package com.example.webvcl.webvcl.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.util.Date;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "SanPhamChiTiet")
public class ChiTietSanPham {

                @Id
                @GeneratedValue(strategy = GenerationType.IDENTITY)
                private int id;

                private double gia; // Giá của sản phẩm

                private int soluongton; // Số lượng tồn

                @Temporal(TemporalType.DATE)
                private Date ngaysua; // Ngày sửa

                @Temporal(TemporalType.DATE)
                private Date ngaytao; // Ngày tạo

                private int trangthai; // Trạng thái sản phẩm

                @ManyToOne
                @JoinColumn(name = "idSanPham")
                private SanPham sanPham;

                @ManyToOne
                @JoinColumn(name = "idDiemCanBang")
                private DiemCanBang diemCanBang;

                @ManyToOne
                @JoinColumn(name = "idVatLieuTruc")
                private VatLieuTruc vatLieuTruc;

                @ManyToOne
                @JoinColumn(name = "idVatLieuKhung")
                private VatLieuKhung vatLieuKhung;

                @ManyToOne
                @JoinColumn(name = "idDoCungThan")
                private DoCungThan doCungThan;

                @ManyToOne
                @JoinColumn(name = "idChieuDaiTongThe")
                private ChieuDaiTongThe chieuDaiTongThe;

                @ManyToOne
                @JoinColumn(name = "idMucCangToiDa")
                private MucCangToiDa mucCangToiDa;

                @ManyToOne
                @JoinColumn(name = "idChuViCanVot")
                private ChuViCanVot chuViCanVot;

                @ManyToOne
                @JoinColumn(name = "idMauSac")
                private MauSac mauSac;

        }




