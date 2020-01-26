package com.sda.twitter.servlet;

import com.sda.twitter.persistance.entities.TbUser;
import com.sda.twitter.serwis.ArticleService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

// Serwlet w celu sprawdzenia czy uzytkownik zalogowany czy nie.


@WebServlet(urlPatterns = "/addArticle")
public class AddArticleServlet extends HttpServlet {
    private ArticleService articleService = new ArticleService();

    private static final String UTF_8 = StandardCharsets.UTF_8.name();

    @Override
    protected void doPost(
            HttpServletRequest req
            , HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding(UTF_8);
        final String content = req.getParameter("content");
        //pobieramy sesje aby ID uzytkownika bylo i zeby mozna bylo dodac artykul do bazy danych
        //z TBUser pobierzemy ID bo posiada metod getID()
        final TbUser currentUser = (TbUser) req.getSession().getAttribute("currentUser");
        articleService.addArticle(currentUser, content);
        //dodawanie kodowania znaków:
        resp.sendRedirect("index.jsp");

    }
}
