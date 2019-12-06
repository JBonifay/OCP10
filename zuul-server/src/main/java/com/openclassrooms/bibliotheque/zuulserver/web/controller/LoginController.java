package com.openclassrooms.bibliotheque.zuulserver.controller;

import com.openclassrooms.bibliotheque.zuulserver.bean.auth.AuthResponse;
import com.openclassrooms.bibliotheque.zuulserver.bean.auth.LoginRequest;
import com.openclassrooms.bibliotheque.zuulserver.service.ILoginService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RequiredArgsConstructor
@Controller
public class LoginController {

    private final ILoginService iLoginService;

    @CrossOrigin("*")
    @PostMapping("/signin")
    @ResponseBody
    public ResponseEntity<AuthResponse> login(@RequestBody LoginRequest loginRequest) {
        String token = iLoginService.login(loginRequest.getUsername(), loginRequest.getPassword());
        return getAuthResponseResponseEntity(token);
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
        return new ResponseEntity<AuthResponse>(new AuthResponse(token), headers, HttpStatus.CREATED);
    }

    @CrossOrigin("*")
    @PostMapping("/signout")
    @ResponseBody
    public ResponseEntity<AuthResponse> logout(@RequestHeader(value = "Authorization") String token) {
        HttpHeaders headers = new HttpHeaders();
        if (iLoginService.logout(token)) {
            headers.remove("Authorization");
            return new ResponseEntity<AuthResponse>(new AuthResponse("logged out"), headers, HttpStatus.CREATED);
        }
        return new ResponseEntity<AuthResponse>(new AuthResponse("Logout Failed"), headers, HttpStatus.NOT_MODIFIED);
    }

    /**
     * @return boolean.
     * if request reach here it means it is a valid token.
     */
    @PostMapping("/valid/token")
    @ResponseBody
    public Boolean isValidToken(@RequestHeader(value = "Authorization") String token) {
        return true;
    }


    @PostMapping("/signin/token")
    @CrossOrigin("*")
    @ResponseBody
    public ResponseEntity<AuthResponse> createNewToken(@RequestHeader(value = "Authorization") String token) {
        String newToken = iLoginService.createNewToken(token);
        return getAuthResponseResponseEntity(newToken);
    }

}
