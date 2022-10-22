<%-- 
    Document   : register
    Created on : 17-Oct-2022, 12:34:59 PM
    Author     : johnn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="shopping-list" method="post">
        <input type="hidden" name="action" value="register">
        <div class="container">
            <div class ="position-absolute top-50 start-50 translate-middle"> 
                <div class="row">

                  <div class="col">
                    <h1>Shopping List</h1>
                  </div>

                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-floating mb-3">
                          <input type="text" class="form-control" name="name" id="name" placeholder="name@example.com">
                            <label for="name">Name</label>
                        </div>
                    </div>
                </div>
                    <div class="row">
                        <div class="col">
                              <button type="submit" class="btn btn-primary btn btn-lg position" style="background-color: green" action="post">Submit</button>
                        </div>
                    </div>
                </div>
        </div>
        </form>
    </body>
</html>
