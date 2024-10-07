package com.example.webvcl.webvcl.Controller;


import com.example.webvcl.webvcl.Entity.SanPham;
import com.example.webvcl.webvcl.Repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/hnh-shop")
public class SanPhamController {

    @Autowired
    private SanPhamRepo spRepo;

    // Hiển thị danh sách sản phẩm
    @GetMapping("/hien-thi")
    public String hienThiSanPham(Model model) {
        List<SanPham> spList = spRepo.findAll();
        model.addAttribute("data", spList);
        return "san_pham/index";  // Trả về view "index.jsp" hiển thị danh sách sản phẩm
    }

    // Hiển thị form thêm sản phẩm
    @GetMapping("/create")
    public String createForm(Model model) {
        model.addAttribute("data", new SanPham());  // Tạo một đối tượng trống cho form
        return "san_pham/add";  // Trả về view "add.jsp" để thêm sản phẩm
    }

    // Xử lý khi người dùng submit form thêm sản phẩm
    @PostMapping("/store")
    public String storeSanPham(@ModelAttribute("data") SanPham sanPham) {
        spRepo.save(sanPham);  // Lưu sản phẩm vào cơ sở dữ liệu
        return "redirect:/hnh-shop/hien-thi";  // Chuyển hướng về trang hiển thị sản phẩm
    }

    // Hiển thị form chỉnh sửa sản phẩm
    @GetMapping("/edit/{id}")
    public String editForm(@PathVariable("id") Integer id, Model model) {
        SanPham sanPham = spRepo.findById(id).orElse(null);
        if (sanPham != null) {
            model.addAttribute("data", sanPham);  // Đưa sản phẩm cần chỉnh sửa vào form
            return "san_pham/edit";  // Trả về view "edit.jsp"
        }
        return "redirect:/hnh-shop/hien-thi";  // Nếu không tìm thấy sản phẩm, quay lại danh sách
    }

    // Xử lý chỉnh sửa sản phẩm
    @PostMapping("/edit/{id}")
    public String updateSanPham(@PathVariable("id") Integer id, @ModelAttribute("data") SanPham sanPham) {
        sanPham.setId(id);  // Cập nhật ID để đảm bảo đúng sản phẩm
        spRepo.save(sanPham);  // Cập nhật thông tin sản phẩm vào cơ sở dữ liệu
        return "redirect:/hnh-shop/hien-thi";  // Quay lại danh sách sản phẩm sau khi cập nhật
    }

    // Xóa sản phẩm
    @GetMapping("/delete/{id}")
    public String deleteSanPham(@PathVariable("id") Integer id) {
        spRepo.deleteById(id);  // Xóa sản phẩm khỏi cơ sở dữ liệu
        return "redirect:/hnh-shop/hien-thi";  // Quay lại danh sách sản phẩm sau khi xóa
    }
}
