<%-- 
    Document   : shoppinglist
    Created on : 17-Oct-2022, 1:00:21 PM
    Author     : johnn
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="containter px-4 py-4">
            <div class="row gy-4">
                <div class="col"></div>
                <div class="col-md-auto">
                    <div class="card" style="width: 18rem;">
                        <img src= "https://images.unsplash.com/photo-1615484477545-04af2a4d851c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h1 class="card-title">Hello <c:out value = "${name}"/></h1>
                            <form action="shopping-list" method="post">
                                <input type="hidden" name="action" value="logout">
                                <button type="submit" class="btn btn-outline-secondary" >Logout</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col"></div>
            </div>

            <div class="row gy-4">
                <div class="col-6">
                    <div class="card m-2 " style="width: 18rem;">
                        <form action="shopping-list" method="post">
                            <h1 class="m-3">List</h1>

                            <input type="hidden" name="action" value="add">


                            <div class="form-floating my-2 mx-3">
                                <input type="text" class="form-control" name="item" id="item" placeholder="name@example.com">
                                <label for="name">New Item</label>
                            </div><!-- comment -->


                            <button type="submit" class="btn btn-success mx-3 my-3">Submit</button>

                        </form>
                    </div>
                </div>
            </div>

            <div class="row p-2 gy-4">
                <div class="col-6">

                    <div class="card">
                        <div class="card-body wr-50">
                            <h5 class="card-title">Items:</h5>
                            <h6 class="card-subtitle mb-2 text-muted">Select items and delete</h6>
                            <form action="shopping-list" method="post">
                                <input type="hidden" name="action" value="delete">

                                <c:forEach var="item" items="${items}">
                   <!--                 <label><input type="radio" name="item" value="${item}"> ${item}</label><br>-->

                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="item" id="flexRadioDefault1" value="${item}">
                                        <label class="form-check-label" for="item">
                                            ${item}
                                        </label>
                                    </div>

                                </c:forEach>
                                <br>
                                <button type="submit" class="btn btn-outline-danger">Delete</button>

                            </form>

                            <!--              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                        </div>
                    </div>

                </div>
            </div>

        </div> 
    </body>
</html>
