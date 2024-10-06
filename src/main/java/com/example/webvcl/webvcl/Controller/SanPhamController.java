package com.example.webvcl.webvcl.Controller;

import com.example.webvcl.webvcl.Entity.SanPham;
import com.example.webvcl.webvcl.Repository.SanPhamRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/sanpham")
public class SanPhamController {

    @Autowired
    private SanPhamRepo sanPhamRepository;

    // Hiển thị danh sách sản phẩm
    @GetMapping
    public String getAllSanPham(Model model) {
        List<SanPham> sanPhamList = sanPhamRepository.findAll();
        model.addAttribute("sanPhamList", sanPhamList);
        return "webapp/WEB-INF/view/sanpham/index"; // Đường dẫn đến file index.jsp
    }

    // Hiển thị thêm sản phẩm
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("sanPham", new SanPham());
        return "webapp/WEB-INF/view/sanpham/add"; // Đường dẫn đến file add.jsp
    }

    // Hiển thị form chỉnh sửa sản phẩm
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        Optional<SanPham> sanPhamOptional = sanPhamRepository.findById(id);
        if (sanPhamOptional.isPresent()) {
            model.addAttribute("sanPham", sanPhamOptional.get());
            return "webapp/WEB-INF/view/sanpham/edit"; // Đường dẫn đến file edit.jsp
        } else {
            return "redirect:/sanpham"; // Nếu không tìm thấy sản phẩm, chuyển hướng về danh sách
        }
    }

    // Cập nhật sản phẩm
    @PostMapping("/update/{id}")
    public String updateSanPham(@PathVariable int id, @ModelAttribute SanPham sanPhamDetails) {
        Optional<SanPham> sanPhamOptional = sanPhamRepository.findById(id);

        if (sanPhamOptional.isPresent()) {
            SanPham sanPham = sanPhamOptional.get();
            sanPham.setMa(sanPhamDetails.getMa());
            sanPham.setTen(sanPhamDetails.getTen());
            sanPham.setThongtin(sanPhamDetails.getThongtin());
            sanPham.setGia(sanPhamDetails.getGia());
            sanPham.setTrangthai(sanPhamDetails.getTrangthai());
            sanPham.setSoluongdaban(sanPhamDetails.getSoluongdaban());
            sanPham.setAnh(sanPhamDetails.getAnh());

            sanPhamRepository.save(sanPham);
            return "redirect:/sanpham"; // Chuyển hướng về danh sách sản phẩm
        } else {
            return "redirect:/sanpham"; // Nếu không tìm thấy sản phẩm, chuyển hướng về danh sách
        }
    }

    // Xóa sản phẩm
    @GetMapping("/delete/{id}")
    public String deleteSanPham(@PathVariable int id) {
        sanPhamRepository.deleteById(id);
        return "redirect:/sanpham"; // Chuyển hướng về danh sách sản phẩm
    }

    // Tìm kiếm sản phẩm theo loại
    @GetMapping("/timkiem/{idLoai}")
    public String timKiemTheoLoai(@PathVariable int idLoai, Model model) {
        List<SanPham> sanPhamList = sanPhamRepository.findByLoaiId(idLoai);
        model.addAttribute("sanPhamList", sanPhamList);
        return "webapp/WEB-INF/view/sanpham/index"; // Trả về danh sách sản phẩm tìm kiếm
    }
}
