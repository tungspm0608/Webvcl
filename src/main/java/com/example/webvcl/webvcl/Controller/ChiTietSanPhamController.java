package com.example.webvcl.webvcl.Controller;

import com.example.webvcl.webvcl.Entity.ChiTietSanPham;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;

@Controller
@RequestMapping("/chitietsanpham")
public class ChiTietSanPhamController {

    @PersistenceContext
    private EntityManager entityManager;

    @GetMapping
    public String list(Model model) {
        List<ChiTietSanPham> list = entityManager.createQuery("SELECT c FROM ChiTietSanPham c", ChiTietSanPham.class).getResultList();
        model.addAttribute("chitietsanpham", list);
        return "./view/CTSP/index";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("chitietsanpham", new ChiTietSanPham());
        return "./view/CTSP/add";
    }

    @PostMapping("/add")
    @Transactional
    public String add(@ModelAttribute ChiTietSanPham chiTietSanPham) {
        entityManager.persist(chiTietSanPham);
        return "redirect:/chitietsanpham";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        ChiTietSanPham chiTietSanPham = entityManager.find(ChiTietSanPham.class, id);
        model.addAttribute("chitietsanpham", chiTietSanPham);
        return "edit";
    }




    @PostMapping("/edit/{id}")
    @Transactional
    public String edit(@PathVariable int id, @ModelAttribute ChiTietSanPham chiTietSanPham) {
        ChiTietSanPham existing = entityManager.find(ChiTietSanPham.class, id);
        existing.setIdsanpham(chiTietSanPham.getIdsanpham());
        existing.setIddiemcanbang(chiTietSanPham.getIddiemcanbang());
        existing.setIdvatlieutruc(chiTietSanPham.getIdvatlieutruc());
        existing.setIdvatlieukhung(chiTietSanPham.getIdvatlieukhung());
        existing.setIddocungthan(chiTietSanPham.getIddocungthan());
        existing.setIdchieudaitongthe(chiTietSanPham.getIdchieudaitongthe());
        existing.setIdmuccangtoida(chiTietSanPham.getIdmuccangtoida());
        existing.setIdchuvicanvot(chiTietSanPham.getIdchuvicanvot());
        existing.setIdmausac(chiTietSanPham.getIdmausac());
        existing.setGia(chiTietSanPham.getGia());
        existing.setSoluongton(chiTietSanPham.getSoluongton());
        existing.setNgaysua(chiTietSanPham.getNgaysua());
        existing.setTrangthai(chiTietSanPham.getTrangthai());
        return "redirect:/chitietsanpham";
    }

    @GetMapping("/delete/{id}")
    @Transactional
    public String delete(@PathVariable int id) {
        ChiTietSanPham chiTietSanPham = entityManager.find(ChiTietSanPham.class, id);
        if (chiTietSanPham != null) {
            entityManager.remove(chiTietSanPham);
        }
        return "redirect:/chitietsanpham";
    }
}
