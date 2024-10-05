package com.example.webvcl.webvcl.Controller;

import com.example.webvcl.webvcl.Entity.SanPham;
import com.example.webvcl.webvcl.Repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("sanpham")
public class SanPhamController {
    @Autowired
    private SanPhamRepo sanPhamRepository;

    @GetMapping("hienthi")
    public String getSanPham(Model model) {
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("sanPhamList", sanPhamList);
        return "index"; // Chuyển hướng đến index.jsp
    }

    // Thêm sản phẩm
    @PostMapping("/add")
    public String addSanPham(@RequestParam String ma,
                             @RequestParam String ten,
                             @RequestParam String thongtin,
                             @RequestParam double gia,
                             @RequestParam int trangthai,
                             @RequestParam int soluongdaban,
                             @RequestParam(required = false) String anh) {
        SanPham sanPham = new SanPham();
        sanPham.setMa(ma);
        sanPham.setTen(ten);
        sanPham.setThongtin(thongtin);
        sanPham.setGia(gia);
        sanPham.setTrangthai(trangthai);
        sanPham.setSoluongdaban(soluongdaban);
        sanPham.setAnh(anh);

        sanPhamRepository.save(sanPham);
        return "redirect:/sanpham"; // Chuyển hướng về danh sách sản phẩm
    }

    // Lấy tất cả sản phẩm
    @GetMapping
    public List<SanPham> getAllSanPham() {
        return sanPhamRepository.findAll();
    }

    // Cập nhật sản phẩm
    @GetMapping("/sanpham/sua/{id}")
    public String editSanPham(@PathVariable("id") int id, Model model) {
        SanPham sanPham = sanPhamRepository.findById(id).orElse(null);
        model.addAttribute("sanPham", sanPham);
        return "edit"; // Trả về view edit.jsp
    }
    @PostMapping("/sanpham/capnhat")
    public String updateSanPham(@RequestParam int id,
                                @RequestParam String ma,
                                @RequestParam String ten,
                                @RequestParam String thongtin,
                                @RequestParam double gia,
                                @RequestParam int trangthai,
                                @RequestParam int soluongdaban,
                                @RequestParam(required = false) String anh) {
        SanPham sanPham = new SanPham();
        sanPham.setId(id);
        sanPham.setMa(ma);
        sanPham.setTen(ten);
        sanPham.setThongtin(thongtin);
        sanPham.setGia(gia);
        sanPham.setTrangthai(trangthai);
        sanPham.setSoluongdaban(soluongdaban);
        sanPham.setAnh(anh);

        sanPhamRepository.save(sanPham);
        return "redirect:/sanpham"; // Chuyển hướng về danh sách sản phẩm
    }

    // Xóa sản phẩm
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteSanPham(@PathVariable int id) {
        sanPhamRepository.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}


