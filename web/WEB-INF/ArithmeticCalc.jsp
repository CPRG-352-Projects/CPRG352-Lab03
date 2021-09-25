<%-- 
    Document   : ArthimeticCalc
    Created on : 24-Sep-2021, 9:55:39 AM
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
        <title>ArithmeticCalc</title>
    </head>
    <body>
        <div class="container mt-5">
            <h1>Arithmetic Calculator</h1>
            <form method="POST" action="ArithmeticCalculator">
                <br>
                <label>First Number:&ensp;&ensp;&ensp;</label>
                <input type="text" name="first_number" value="">
                <br>
                <label>Second Number:</label>
                <input type="text" name="second_number" value="">
                <br><br>
                <input type="submit" name="-" value="-">
                <input type="submit" name="+"  value="+">
                <input type="submit" name="*"  value="*">
                <input type="submit" name="%"  value="%">
                <br><br>
                <h4 class="text-warning">${calculation}</h4>
                <h4 class="text-danger">${error}</h4>
            </form>
            <a href="ageCalc">Age Calculator</a>
        </div>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
        ></script>

    </body>
</html>
