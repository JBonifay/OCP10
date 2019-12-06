package com.openclassrooms.bibliotheque.zuulserver.web.controller;

import com.openclassrooms.bibliotheque.zuulserver.bean.auth.AuthResponse;
import com.openclassrooms.bibliotheque.zuulserver.bean.LoginRequest;
import com.openclassrooms.bibliotheque.zuulserver.bean.utilisateur.UtilisateurBean;
import com.openclassrooms.bibliotheque.zuulserver.proxies.UtilisateurProxy;
import com.openclassrooms.bibliotheque.zuulserver.service.LoginService;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.ResponseBody;

@RequiredArgsConstructor
@Controller
public class LoginController {

    private final LoginService     loginService;
    private final UtilisateurProxy utilisateurProxy;

    @CrossOrigin("*")
    @PostMapping("/signin")
    @ResponseBody
    public ResponseEntity<AuthResponse> login(@RequestBody LoginRequest loginRequest) {
        ResponseEntity<UtilisateurBean> utilisateurBean = utilisateurProxy.findUtilisateurByEmail(loginRequest.getEmail());

        if (utilisateurBean.getStatusCode() == HttpStatus.OK) {
            String token = loginService.login(utilisateurBean.getBody());
            return getAuthResponseResponseEntity(token);
        } else {
            return null;
        }
    }

    @CrossOrigin("*")
    @PostMapping("/signout")
    @ResponseBody
    public ResponseEntity<AuthResponse> logout(@RequestHeader(value = "Authorization") String token) {
        HttpHeaders headers = new HttpHeaders();
        if (loginService.logout(token)) {
            headers.remove("Authorization");
            return new ResponseEntity<AuthResponse>(new AuthResponse("logged out"), headers, HttpStatus.CREATED);
        }
        return new ResponseEntity<AuthResponse>(new AuthResponse("Logout Failed"), headers, HttpStatus.NOT_MODIFIED);
    }


    private ResponseEntity<AuthResponse> getAuthResponseResponseEntity(final String token) {
        HttpHeaders  headers    = new HttpHeaders();
        List<String> headerlist = new ArrayList<>();
        List<String> exposeList = new ArrayList<>();

        headerlist.add("Content-Type");
        headerlist.add(" Accept");
        headerlist.add("X-Requested-With");
        headerlist.add("Authorization");
        headers.setAccessControlAllowHeaders(headerlist);
        exposeList.add("Authorization");
        headers.setAccessControlExposeHeaders(exposeList);
        headers.set("Authorization", token);
        return new ResponseEntity(new AuthResponse(token), headers, HttpStatus.CREATED);
    }

}
