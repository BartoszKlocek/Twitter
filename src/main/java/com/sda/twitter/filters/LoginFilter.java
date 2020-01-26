package com.sda.twitter.filters;

import com.sda.twitter.persistance.entities.TbUser;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

// pobrac z sesji uzytkownika

@WebFilter("/add-article.jsp")
public class LoginFilter implements Filter {


    @Override
    public void doFilter(
            ServletRequest servletRequest
            , ServletResponse servletResponse
            , FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        final HttpSession session = httpServletRequest.getSession();
        final TbUser currentUser = (TbUser) session.getAttribute("currentUser");
        if (currentUser == null) {
            //dispather to uzytkownik ma ten sam url a otowrzy sie inna strona
            final String requestURI = httpServletRequest.getRequestURI();
            httpServletRequest.setAttribute("currentURI", requestURI);

            RequestDispatcher requestDispatcher = servletRequest.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(servletRequest, servletResponse);
        }

        //filt to lancuch zdarzn ktore maja sie wywolac
        //Filtr przesle zapytan dalej wiec wyswietli sie dalej ta sama strona
        chain.doFilter(servletRequest, servletResponse);
    }
}
