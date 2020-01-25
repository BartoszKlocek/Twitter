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
            ServletRequest req
            , ServletResponse response
            , FilterChain chain) throws IOException, ServletException {
        HttpServletRequest request1 = (HttpServletRequest) req;
        final HttpSession session = request1.getSession();
        final TbUser currentUser = (TbUser) session.getAttribute("currentUser");
        if (currentUser == null) {
            //dispather to uzytkownik ma ten sam url a otowrzy sie inna strona
            final RequestDispatcher requestDispatcher = req.getRequestDispatcher("login.jsp");
            requestDispatcher.forward(req, response);
        }

        //filt to lancuch zdarzn ktore maja sie wywolac
        //Filtr przesle zapytan dalej wiec wyswietli sie dalej ta sama strona
        chain.doFilter(req, response);
    }
}
