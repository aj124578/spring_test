package shop.mtcoding.test.controller;

import java.security.Principal;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import shop.mtcoding.test.model.User;
import shop.mtcoding.test.model.UserRepository;

@Controller
public class UserController {
    
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private HttpSession session;

    @GetMapping("/logout")
    public String logout(){
        session.invalidate();
        return "redirect:/";
    }

    @GetMapping("/joinForm")
    public String joinForm(){
        return "user/joinForm";
    }

    @PostMapping("/join")
    public String join(String username, String password, String email){
        int result = userRepository.insert(username, password, email);
        if(result == 1){
            return "redirect:/loginForm";
        }
        return "redirect:/joinForm";
    }

    @GetMapping({"/", "/loginForm"})
    public String loginForm(){
        return "user/loginForm";
    }

    @PostMapping("/login")
    public String login(String username, String password){
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null) {
            return "redirect:/loginForm";
        }
        session.setAttribute("principal", user);
        return "redirect:/list";
    }

    @GetMapping("/updateForm")
    public String updateForm(){
        User principal = (User) session.getAttribute("principal");
        if (principal == null) {
            return "redirect:/notfound";
        }
        return "user/updateForm";
    }

    @PostMapping("update/{id}")
    public String updateByUsername(String password, String email){
        User principal = (User)session.getAttribute("principal");
      
        if (principal == null) {
            return "redirect:/loginForm";
        }
        int result = userRepository.updateByUsername(principal.getUsername(), password, email);
        if (result == -1){
            return "redirect:/notfound";
        }
        if (result == 1) {
            return "redirect:/logout";
        }
        return "redirect:/loginForm";

    }
}
