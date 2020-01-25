<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
!doctype html>
<html lang="en">

<jsp:include page="include/meta.jsp"/>


<body>

<jsp:include page="include/header.jsp"/>

<main role="main">

    <div class="container">
        <div class="row text-center">
            <div class="col-md-8 m-auto text-left">
                <h4 class="mb-3">Add new article</h4>
                <form name="addArticleForm" class="needs-validation" action="addArticle" method="post">
                    <div class="mb-3">
                        <div class="form-group">
                            <label>Content
                                <textarea class="form-control" name="content" rows="8" cols="80"></textarea>
                            </label>
                        </div>


                    </div>

                    <hr class="mb-4"/>
                    <button class="btn btn-primary btn-lg" type="submit">Add article</button>

                </form>
            </div>
        </div>
    </div> <!-- /container -->

</main>

<jsp:include page="include/footer.pl.jsp"/>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<%--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>--%>
<%--<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>--%>
<%--<script src="../../assets/js/vendor/popper.min.js"></script>--%>
<script src="js/bootstrap.js"></script>
</body>
</html>

