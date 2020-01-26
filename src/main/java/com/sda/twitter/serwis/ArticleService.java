package com.sda.twitter.serwis;

import com.sda.twitter.persistance.dao.ArticleDao;
import com.sda.twitter.persistance.entities.TbUser;

import java.util.List;

public class ArticleService {

    private ArticleDao articleDao = new ArticleDao();


    public void addArticle(TbUser tbUser, String content) {
        articleDao.addArticle(tbUser, content);
    }

    public List getArticleList() {
        return articleDao.getArticles();
    }
}
