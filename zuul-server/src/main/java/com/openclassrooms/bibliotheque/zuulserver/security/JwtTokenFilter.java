package com.openclassrooms.bibliotheque.zuulserver.security;

import com.openclassrooms.bibliotheque.zuulserver.web.exception.UnauthorizedException;
import io.jsonwebtoken.JwtException;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

@RequiredArgsConstructor
public class JwtTokenFilter extends GenericFilterBean {

    private final JwtTokenProvider jwtTokenProvider;

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest  request  = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;
        String              token    = jwtTokenProvider.resolveToken((HttpServletRequest) req);
        if (token != null) {
            if (!jwtTokenProvider.isTokenPresentInDB(token)) {
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid JWT token");
                throw new UnauthorizedException("Invalid JWT token");
            }
            try {
                jwtTokenProvider.validateToken(token);
            } catch (JwtException | IllegalArgumentException e) {
                response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Invalid JWT token");
                throw new UnauthorizedException("Invalid JWT token");
            }
            Authentication auth = jwtTokenProvider.getAuthentication(token);
            //setting auth in the context.
            SecurityContextHolder.getContext()
                                 .setAuthentication(auth);
        }
        filterChain.doFilter(req, res);

    }

}
