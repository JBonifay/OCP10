package com.openclassrooms.controller;

import com.openclassrooms.proxies.LivreProxy;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequiredArgsConstructor
public class IndexController {

    private final LivreProxy livreProxy;

    @GetMapping({"/", "/index"})
    public ModelAndView getIndexPage() {
        ModelAndView index = new ModelAndView("index");
        index.addObject("livres", livreProxy.getLivreList());
        return index;
    }

}
