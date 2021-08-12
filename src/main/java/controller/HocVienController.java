package controller;

import models.HocVien;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.HocVienService;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HocVienController {
    HocVienService hocVienService= new HocVienService();
    @RequestMapping("/show")
    public String home(HttpServletRequest request){
        request.setAttribute("list",hocVienService.list);
        return "/WEB_INF/show.jsp";
    }
    @GetMapping("/create")
    public String create(HttpServletRequest request){
        return "/WEB_INF/create.jsp";
    }
    @PostMapping("/create")
    public String createPlus(@ModelAttribute HocVien hocVien){
//        Không làm tn nữa mà dùng @ModelAttribute
//        String name= request.getParameter("name");
//        HocVien hocVien= new HocVien();
        hocVienService.save(hocVien);
        return "redirect:show";
    }
}
