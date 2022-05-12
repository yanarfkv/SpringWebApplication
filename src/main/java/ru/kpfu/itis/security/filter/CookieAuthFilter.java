package ru.kpfu.itis.security.filter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;
import org.springframework.web.filter.OncePerRequestFilter;
import ru.kpfu.itis.models.Auth;
import ru.kpfu.itis.models.User;
import ru.kpfu.itis.repositories.AuthRepository;
import ru.kpfu.itis.security.authentication.CookieAuthentication;
import ru.kpfu.itis.security.details.UserDetailsImpl;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@Component
public class CookieAuthFilter extends GenericFilterBean {

    @Autowired
    private AuthRepository authRepository;

    @Autowired
    @Qualifier("customUserDetailsImpl")
    private UserDetailsService userDetailsService;

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest servletRequest = (HttpServletRequest) request;
        HttpServletResponse servletResponse = (HttpServletResponse) response;
        Cookie[] cookies = servletRequest.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("Auth")) {
                    Optional<Auth> authOptional = authRepository.findByCookieValue(cookie.getValue());
                    if (authOptional.isPresent()) {
                        String email = authOptional.get().getUser().getEmail();
                        UserDetails userDetails = userDetailsService.loadUserByUsername(email);

                        CookieAuthentication cookieAuthentication = new CookieAuthentication(cookie.getValue());
                        cookieAuthentication.setUserDetails((UserDetailsImpl) userDetails);
                        cookieAuthentication.setAuthenticated(true);

                        SecurityContextHolder.getContext().setAuthentication(cookieAuthentication);
                    }
                }
            }
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }
}
