<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 11/09/20
  Time: 2:00 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Reset Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="extensions/multiple-sort/bootstrap-table-multiple-sort.js"></script>
    <script src="https://www.w3schools.com/lib/w3.js"></script>
    <style>
    .icon{
        color: grey;
        z-index: 1.5;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 2em;
        padding-left: 18px;
    }
    .icon1{
        color: grey;
        z-index: 2;
        position: absolute;
        width: 2em;
        height: 2em;
        line-height: 1.2em;
        padding-left: 150px;
        padding-bottom: 5px;
    }

    input[type= search]{


        width: 190px;
        padding-left: 35px;
    }
    .et{
        color: white;

    }
    .shiftRight{
        margin-left: 200px;
    }
    .shiftRight1{
        margin-left: 160px;
    }
    .shiftRight2{
        margin-left: 140px;
    }
    .makepadded{
        padding-left: 20px;
    }
    .Stud1{
        margin-left: 10px;
        width: 20%;
        margin-bottom: 10px;
    }
    .test{
        border: 2px solid black;
        border-radius: 6px;
        margin-top: 50px;
    }
    </style>
</head>

<body>
<nav class="navbar sticky-top navbar-light bg-dark">
    <div class="container col-lg-9">
        <a class="navbar-brand" href="#">Link Sharing</a>
    </div>
    <div class="container col-lg-3">
        <span>
            <i class="fa fa-search icon"></i>
            <input type="search" placeholder="Search..." class="form-control rounded-pill"/>
        </span>
        <div class="btn-group">
            <button type="button" class="btn" style="color: white">
                <svg width="25px" height="25px" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                </svg>
            </button>
        </div>
    </div>
</nav>
${flash.message}
<!-- Forgot Password Box ---->
<div class="container">
    <div class="test">
        <nav class="navbar navbar-inverse bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#" class="et" style="color: white;">Reset Password</a>
                </div>
            </div>
        </nav>
        <g:form controller="user" action="resetpassword" params="[id: u.id]">
            <div class="form-group" style="margin-top: 10px">
                <label for="psw" class="makepadded">Password*</label>
                <input type="Password" name="password" class="input shiftRight" id="psw"><br><br><br>
                <label for="cpsw" class="makepadded">Confirm Password*</label>
                <input type="Password" name="confirmpassword" class="input shiftRight2" id="cpsw"><br><br><br>
                <button type="submit" class="btn btn-primary Stud1">Update</button>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>