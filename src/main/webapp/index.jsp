<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="articleService" scope="request" class="com.sda.twitter.serwis.ArticleService"/>
!doctype html>
<html lang="en">

<jsp:include page="include/meta.jsp"/>


<body>

<jsp:include page="include/header.jsp"/>

<%--wykresolne bo dla angulara--%>
<%--<main role="main">--%>
<main role="main" ng-app="articleApp">
    <%--    wykreslone bo angular--%>
    <%--    <%--%>
    <%--        final List<TbArticle> articles = articleService.getArticleList();--%>
    <%--        pageContext.setAttribute("articles", articles);--%>
    <%--    %>--%>

        <div class="container">
            <div ng-controller="articleController" ng-init="init()">
                <h2>{{weather.main.temp}}&deg; C </h2>
                <div ng-repeat="article in articles">
                    <div class="row d-flex justify-content-center">
                        <div class="col-5">
                            <h2>Heading</h2>
                            <p>{{article.content}}</p>
                            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                        </div>
                    </div>
                </div>


                <%--        wykomentowany bo uzywamy angulara--%>
            <%--    <div class="container">--%>

            <%--        <c:forEach items="${articles}" var="article">--%>
            <%--            <!-- Example row of columns -->--%>
            <%--            <div class="row d-flex justify-content-center">--%>
            <%--                <div class="col-5">--%>
            <%--                    <h2>Heading</h2>--%>
            <%--                    <p>${article.content} </p>--%>
            <%--                    <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>--%>
            <%--                </div>--%>

            <%--            </div>--%>
            <%--            <hr>--%>
            <%--        </c:forEach>--%>


        </div> <!-- /container -->
    </div>
</main>

<jsp:include page="include/footer.pl.jsp"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
<%--<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>--%>
<%--<script src="../../assets/js/vendor/popper.min.js"></script>--%>

<%--DLA angulara wykomentujemy bootstrapa, poniewaz w tym przypadku niepotrbeny i mozep owstac konflikt angulara z bootstrapem--%>
<%--<script src="js/bootstrap.js"></script>--%>

<script src="js/angular.js"></script>
<script src="js/controller.js"></script>
</body>
</html>

