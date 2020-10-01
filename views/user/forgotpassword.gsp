<%--
  Created by IntelliJ IDEA.
  User: gautamgupta
  Date: 10/09/20
  Time: 10:21 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Forgot Password</title>
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
    .et{
        color: white;

    }
    .shiftRight{
        margin-left: 200px;
    }
    .shiftRight1{
        margin-left: 160px;
        width: 30%;
    }
    .shiftRight2{
        margin-left: 140px;
    }
    .makepadded{
        padding-left: 20px;
    }
    .Stud1{
        margin-left: 310px;
        width: 10%;
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

    </div>
</nav>


<!-- Forgot Password Box ---->
    <div class="container" id="forgot">
    <div class="test">
    <nav class="navbar navbar-inverse bg-dark" style="padding-top: 0px; padding-bottom: 0px; min-height: 30px">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#" class="et" style="color: white;">Forgot Password</a>
            </div>
        </div>
    </nav>

        <div class="form-group" style="margin-top: 10px" >
            <g:form>
            <label for="email" class="makepadded">Email*</label>
            <input type="email" name="email" class="input shiftRight1" id="email"><br><br><br>
            <label for="psw" class="makepadded">Password*</label>
            <input type="Password" name="password" class="input shiftRight" id="psw"><br><br><br>
            <label for="cpsw" class="makepadded">Confirm Password*</label>
            <input type="Password" name="confirmpassword" class="input shiftRight2" id="cpsw"><br><br><br>
            <button type="submit" class="btn btn-primary Stud1" onclick="forgotpassword()">Update</button>
            </g:form>
        </div>
    </div>
</div>

</body>
</html>