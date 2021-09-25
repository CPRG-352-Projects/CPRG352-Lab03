<%-- 
    Document   : ageCalculator
    Created on : 23-Sep-2021, 12:35:23 PM
    Author     : MMM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <div class="container mt-5">
            <h1>Age Calculator</h1>
            <form method="POST" action="ageCalc">
                <label>Enter Your Age: </label>
                <input type="text" name="age" value="">
                <br><br> 
                <input type="submit" value="Age Next Birthday">
                <br>
                <br>
                <h4 class="text-warning">${ageMessage}</h4>
                <h4 class="text-danger">${errorMessage}</h4>
            </form>
            <a href="ArithmeticCalculator">Arithmetic Calculator</a>
        </div>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
        ></script>

    </body>
</html>
