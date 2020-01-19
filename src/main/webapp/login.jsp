<%@ page contentType="text/html;charset=UTF-8" %>
!doctype html>
<html lang="en">

<jsp:include page="include/meta.jsp"/>


<body>

<jsp:include page="include/header.jsp"/>

<main role="main">
    <div class="container" pb-3>
        <div class="row text-center">
            <div class="container">
                <div class="col-md-4 m-auto">
                    <form action="login" method="post">
                        <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg"
                             alt="" width="72" height="72">
                        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                        <label for="inputLogin" class="sr-only">Login</label>
                        <input type="text" id="inputLogin" name="username" class="form-control" placeholder="Login"
                               required autofocus>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input type="password" id="inputPassword" name="password" class="form-control"
                               placeholder="Password" required>
                        <div class="checkbox mb-3">
                            <label>
                                <input type="checkbox" value="remember-me"> Remember me
                            </label>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
                        <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
                    </form>
                </div>
            </div>
        </div>
    </div>
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


