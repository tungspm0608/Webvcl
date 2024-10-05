package com.example.webvcl.webvcl.Controller;

import com.example.webvcl.webvcl.Entity.SanPham;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("hnh-shop")
public class SanPhamController {
    @GetMapping("san-pham")
    public String SanPham(Model model){
        SanPham sanPham = new SanPham();
        model.addAttribute("sanPham", sanPham);
        return "san-pham";
    }

}
