package com.sda.twitter.serwis;

import com.sda.twitter.persistance.dao.ArticleDao;

import java.util.List;

public class ArticleService {

    private ArticleDao articleDao = new ArticleDao();

    public List getArticleList() {
        return articleDao.getArticles();
    }
}
